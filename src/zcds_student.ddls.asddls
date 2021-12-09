@AbapCatalog.sqlViewName: 'ZV_STUDENT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS view on Student Table'
define view ZCDS_STUDENT
  as select from zta_student
{
      @UI.hidden: true
  key studentid,
      @Search.defaultSearchElement: true@UI:{lineItem: [{position: 10,label:
      'First name'}],
      identification: [ {position: 10, label: 'First name'}],
      selectionField: [ {position: 10}]}
      fname,
      @Search.defaultSearchElement: true
      @UI: {lineItem: [ {position: 20,label: 'Last name'}], identification: [ {position: 20, label: 'Lname'}],
      selectionField: [ {position: 20}]}
      lname,
      @Search.defaultSearchElement: true
      @UI: {lineItem: [ {position: 30,label: 'Gender'}],
      identification: [ {position: 30, label: 'Gender'}],
      selectionField: [ {position: 30}]}
      gender,
      @Search.defaultSearchElement: true
      @UI: {lineItem: [ {position: 40,label: 'DOB'}],
      identification: [ {position: 40, label: 'DOB'}],
      selectionField: [ {position: 40}]}
      birthdate,
      @Search.defaultSearchElement: true
      @UI: {lineItem: [ {position: 50,label: 'commnumber'}],
      identification: [ {position: 50, label: 'Lname'}],
      selectionField: [ {position: 50}]}
      commnumber
}
