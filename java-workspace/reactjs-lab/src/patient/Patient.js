import React , {useState, useEffect} from 'react';
import { makeStyles } from '@material-ui/core/styles';
import MaterialTable, { MTableToolbar } from "material-table";
import {Button, IconButton,TextField,Dialog,DialogActions,
		DialogContent,DialogContentText,DialogTitle,Input,Divider} from '@material-ui/core';
import Avatar from '@material-ui/core/Avatar';
import {Radio,RadioGroup,FormControlLabel,FormControl,FormLabel, Tooltip} from '@material-ui/core';
import AddBox from '@material-ui/icons/AddBox';
import EditIcon from '@material-ui/icons/Edit';
import PatientDetailsIcon from '../static/images/Patient_Details.svg';
import SvgIcon from '@material-ui/core/SvgIcon';
import { DatePicker, KeyboardDatePicker } from "@material-ui/pickers";
import Collapse from '@material-ui/core/Collapse';
import blueGrey from '@material-ui/core/colors/blueGrey';

import {tableIcons} from '../common/TableIcons';
import AddIcon from '@material-ui/icons/Add';
import ServerError from '../common/Errors'
import {API_PATIENT} from '../common/Config';
import {useStyles, styles} from '../styles/PatientStyles';


import AddPatientDialog from './AddPatientDialog';
import { Link } from 'react-router-dom';

export default function Patient (props) {
	const [patients, setPatients] 				= useState([]); //patients=[] empty table
	const [selectedRow, setSelectedRow] 		= useState(-1); 
	const [serverResponse, setServerResponse] 	= useState({status:0, message:null});
	const [alertOpen, setAlertOpen] 			= useState(false);
	const tableRef = React.createRef();

	/*
	useEffect(()=> {
		async function fetchData () {
			let response;
			try	{
				response = await fetch(API_PATIENT);
			} catch(err) {
				return setServerResponse(
							{status:504, 
							message:err.name+': '+err.message+'. Backend server may be down!'
							});
			}
			if (!response.ok)
				return setServerResponse({status:response.status, message:response.message});
			
			response.json()
					.then(data => setPatients(data));	
		};
		fetchData()}, []);
	*/

									  

	const handleAddPatient = (newPatient, srvResponse) => {
					if (!srvResponse) { //annuler
						setAlertOpen(false);
						return ; 
					}
					setAlertOpen(true);
					setServerResponse(srvResponse);
					setPatients([newPatient,...patients]);
	}; 

	const editPatient = (e, selectedRow) => {
		console.log(selectedRow.tableData.id);
		
	};

	const showError = ({status, message}) => {
		setServerResponse({status,message});
		setAlertOpen(true);
		console.log(serverResponse);
	}
	
	const fetchPatients = query => 
			new Promise((resolve, reject) => {
				let url = API_PATIENT;
				if(query.search) 
					url += '/serach';
				
				
				url	+= '?pageNo=' + query.page +
					   '&pageSize=' + query.pageSize;
					
				if (query.orderBy)
					url += '&sortBy=' + query.orderBy.field +
					       '&sortDirection=' + query.orderBy.orderDirection;
			
				if(query.search) 
					url += '&cretirea=' + query.search;
				
						
				console.log(query);
				fetch(url).
					then(response => response.json()).
					then(result => {
							resolve({
							data: result.patients,
							page: result.currentPage,
							totalCount: result.totalPatients,
							})
					})
			});

	const columns = [
		{ title: "Dossier",      field: "id"},
		{ title: "Prenom",  field: "firstName" },
		{ title: "Nom",   	field: "lastName" },
		{ title: "Ne(e) le",   	field: "birthDate" },
		{ title: "Age",   	field: "" },
		{ title: "Addresse",field: "address.address"    },
		{ title: "Ville",   	field: "address.city" },
		{ title: "Telephone", field: "cellPhone", searchable: false }
	];

	const options = {
		search: true,
		pageSize: 10,
		padding: 'dense',
		columnsButton: true,
		loadingType: 'linear',
		pageSizeOptions:[5, 10, 20, 100],
		emptyRowsWhenPaging: false,
		tableLayout:'fixed',
		headerStyle: {
			backgroundColor: blueGrey[600],
			color: '#FFF'
		},
		actionsColumnIndex: 0,
		tableLayout: 'auto',
		debounceInterval: 1000,  //debounce interval for search and filter
	};

	const actions = [
		{ icon: () => <AddPatientDialog handleAddPatient={handleAddPatient} />,
		  tooltip: 'Nouveau Patient',
		  isFreeAction: true,
		},
		{ icon: () => <img src={PatientDetailsIcon} />,
		  tooltip: 'Fiche patient',
		  onClick: (event, rowData) =>{window.location.href='/patient/record/' + rowData.id}
		},
	];

	const localization = {
		header : {actions: 'fiche', },
	};

	return (
		<div>
			<Collapse in={alertOpen}>
				{ serverResponse &&
					<ServerError 
						{...serverResponse} 
						onClose={()=>setAlertOpen(false)}
					/>
				}
			</Collapse>

			<MaterialTable 
				title	= "Patients"
				columns = {columns}      	
				data	= {fetchPatients}
				options	= {options}
				actions	= {actions}
				icons	= {tableIcons}
				localization = {localization}
				onRowClick   = {((evt, selectedRow) => editPatient(evt, selectedRow))}
				onSearchChange = {(e) => console.log("search changed: " + e)}

				components={{
					Toolbar: props => (
					  <>
						<AddPatientDialog handleAddPatient={handleAddPatient} />
						<MTableToolbar {...props} />
					  </>
					),
				  }}
			/>
		</div>
	);
} 





