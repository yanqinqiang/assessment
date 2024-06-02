using cargill.assessment.api.Domain;
using cargill.assessment.api.Domain.Interfaces;
using cargill.assessment.api.Repository;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

var SqlDbConnectionKey = "SqlServerDbConnection";
var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddCors(p => p.AddPolicy("corsapp", builder =>
{
    builder.WithOrigins("*").AllowAnyMethod().AllowAnyHeader();
}));
builder.Services.AddDbContext<AssessmentDbContext>(
    options =>
    {
        SqlConnection connection = new SqlConnection();
        connection.ConnectionString = builder.Configuration.GetConnectionString(SqlDbConnectionKey);

        options.UseSqlServer(connection, sqlServerOption =>
        {
            sqlServerOption.EnableRetryOnFailure(
                maxRetryCount: 10,
                maxRetryDelay: TimeSpan.FromSeconds(5),
                errorNumbersToAdd: null
            );
        });
    });

builder.Services.AddScoped<IReconciliationReportRepo, ReconciliationReportRepo>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("corsapp");

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
