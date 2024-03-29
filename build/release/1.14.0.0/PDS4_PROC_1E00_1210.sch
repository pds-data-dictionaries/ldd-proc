<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:proc  Version:1.2.1.0 - Thu Oct 20 21:56:13 UTC 2022 -->
  <!-- Generated from the PDS4 Information Model Version 1.14.0.0 - System Build 10b -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/proc/v1" prefix="proc"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="//proc:Input_Product">
      <sch:assert test="count(child::*) > 0">
        <title>//proc:Input_Product/Rule</title>
        PROC:error:Input_Product.child_check: proc:Input_Product class must contain at least 1 attribute or class.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//proc:Input_Product_List/pds:Internal_Reference">
      <sch:assert test="pds:reference_type = 'data_to_input_product'">
        <title>//proc:Input_Product_List/pds:Internal_Reference/Rule</title>
        PROC:error:input_product_reference_type_check: pds:reference_type must have value 'data_to_input_product'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//proc:Process">
      <sch:assert test="count(child::*) > 0">
        <title>//proc:Process/Rule</title>
        PROC:error:Process.child_check: proc:Process class must contain at least 1 attribute or class.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//proc:Processing_Information/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'processing_information_to_data_object'">
        <title>//proc:Processing_Information/pds:Local_Internal_Reference/Rule</title>
        PROC:error:local_reference_type_check: pds:local_reference_type must have value 'processing_information_to_data_object'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//proc:Software">
      <sch:assert test="count(child::*) > 0">
        <title>//proc:Software/Rule</title>
        PROC:error:Software.child_check: proc:Software class must contain at least 1 attribute or class.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//proc:Software/pds:Internal_Reference">
      <sch:assert test="pds:reference_type = 'data_to_software'">
        <title>//proc:Software/pds:Internal_Reference/Rule</title>
        PROC:error:software_reference_type_check: pds:reference_type must have value 'data_to_software'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//proc:Software_Program">
      <sch:assert test="count(child::*) > 0">
        <title>//proc:Software_Program/Rule</title>
        PROC:error:Software_Program.child_check: proc:Software_Program class must contain at least 1 attribute or class.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
