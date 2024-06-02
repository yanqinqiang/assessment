import { AgGridReact } from 'ag-grid-react';
import "ag-grid-community/styles/ag-grid.css";
import "ag-grid-community/styles/ag-theme-quartz.css"
import { useState, useEffect, useMemo } from 'react';

import './App.css';

const BASE_URL = 'https://localhost:7176'

function App() {

  const [report, setReport] = useState([]);

  useEffect(() => {
    const fetchReport = async () => {
      const response = await fetch(`${BASE_URL}/Assessment/ReconciliationReport`);
      const report = await response.json();
      setReport(report);
    }

    fetchReport();
  }, [])

  const defaultColDef = useMemo(() => {
    return {
      flex: 1,
      filter: true,
      wrapHeaderText: true,
      autoHeaderHeight: true
    }
  });

  const [columnDefs] = useState([
    {
      field: "acCode",
      headerName: "A/C code",
    },
    {
      field: "description",
      headerName: "Description",
    },
    {
      field: "supplierCode",
      headerName: "Supplier code",
    },
    {
      field: "supplierName",
      headerName: "Supplier name",
    },
    {
      field: "contractNo",
      headerName: "contract no.",
    },
    {
      valueGetter: p => p.data.dueDate.slice(0, 10),
      headerName: "Due date",
    },
    {
      valueGetter: p => {
        if (p.data.amountInCtrm) {
          return p.data.amountInCtrm
        }
        else {
          return ''
        }
      },
      headerName: "AMOUNT IN CTRM(USD)",
    },
    {
      field: "amountInJde",
      headerName: "AMOUNT in JDE",
    },
    {
      field: "pdRate",
      headerName: "PD Rate",
    },
    {
      field: "expectedLoss",
      headerName: "Expected Loss",
    },
    {
      field: "sfAcctTitle",
      headerName: "SF Acct Title",
    },
    {
      field: "insurance",
      headerName: "Insurance",
    },
    {
      valueGetter: p => {
        if (p.data.insuranceRate) {
          return p.data.insuranceRate
        }
        else {
          return ''
        }
      },
      field: "insuranceRate",
      headerName: "Insurance Rate",
    },
    {
      field: "insuranceLimit",
      headerName: "Insurance Limit USD",
    },
    {
      field: "netExposure",
      headerName: "Net Exposure",
    }
  ])

  return (
    <div className='ag-theme-quartz' style={{ height: 500 }}>
      <AgGridReact rowData={report} columnDefs={columnDefs}
        defaultColDef={defaultColDef} />
    </div>
  );
}

export default App;
