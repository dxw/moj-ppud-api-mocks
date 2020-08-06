<?xml version="1.0" encoding="utf-8" standalone="no"?>
<wsdl:definitions xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://tempuri.org/" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="PanelMember" targetNamespace="http://tempuri.org/">
    <wsdl:types>
        <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
            <xs:import namespace="http://schemas.datacontract.org/2004/07/WAMCommon"/>
            <xs:element name="GetPanelMemberInfo">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="id" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetPanelMemberInfoResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q1="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="GetPanelMemberInfoResult" type="q1:PanelMemberDetails"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="AddPreferredLocation">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="memberId" type="xs:int"/>
                        <xs:element minOccurs="0" name="establishmentId" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="AddPreferredLocationResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q2="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="AddPreferredLocationResult" nillable="true" type="q2:ArrayOfEstablishments"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="DeletePreferredLocation">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="memberId" type="xs:int"/>
                        <xs:element minOccurs="0" name="establishmentId" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="DeletePreferredLocationResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q3="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="DeletePreferredLocationResult" nillable="true" type="q3:ArrayOfEstablishments"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="UpdatePanelMemberInfo">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q4="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="pm" type="q4:PanelMemberDetails"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="UpdatePanelMemberInfoResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q5="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="UpdatePanelMemberInfoResult" nillable="true" type="q5:DBCommandResult"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
        </xs:schema>
        <xs:schema xmlns:tns="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="qualified" elementFormDefault="qualified" targetNamespace="http://schemas.microsoft.com/2003/10/Serialization/">
            <xs:element name="anyType" nillable="true" type="xs:anyType"/>
            <xs:element name="anyURI" nillable="true" type="xs:anyURI"/>
            <xs:element name="base64Binary" nillable="true" type="xs:base64Binary"/>
            <xs:element name="boolean" nillable="true" type="xs:boolean"/>
            <xs:element name="byte" nillable="true" type="xs:byte"/>
            <xs:element name="dateTime" nillable="true" type="xs:dateTime"/>
            <xs:element name="decimal" nillable="true" type="xs:decimal"/>
            <xs:element name="double" nillable="true" type="xs:double"/>
            <xs:element name="float" nillable="true" type="xs:float"/>
            <xs:element name="int" nillable="true" type="xs:int"/>
            <xs:element name="long" nillable="true" type="xs:long"/>
            <xs:element name="QName" nillable="true" type="xs:QName"/>
            <xs:element name="short" nillable="true" type="xs:short"/>
            <xs:element name="string" nillable="true" type="xs:string"/>
            <xs:element name="unsignedByte" nillable="true" type="xs:unsignedByte"/>
            <xs:element name="unsignedInt" nillable="true" type="xs:unsignedInt"/>
            <xs:element name="unsignedLong" nillable="true" type="xs:unsignedLong"/>
            <xs:element name="unsignedShort" nillable="true" type="xs:unsignedShort"/>
            <xs:element name="char" nillable="true" type="tns:char"/>
            <xs:simpleType name="char">
                <xs:restriction base="xs:int"/>
            </xs:simpleType>
            <xs:element name="duration" nillable="true" type="tns:duration"/>
            <xs:simpleType name="duration">
                <xs:restriction base="xs:duration">
                    <xs:pattern value="\-?P(\d*D)?(T(\d*H)?(\d*M)?(\d*(\.\d*)?S)?)?"/>
                    <xs:minInclusive value="-P10675199DT2H48M5.4775808S"/>
                    <xs:maxInclusive value="P10675199DT2H48M5.4775807S"/>
                </xs:restriction>
            </xs:simpleType>
            <xs:element name="guid" nillable="true" type="tns:guid"/>
            <xs:simpleType name="guid">
                <xs:restriction base="xs:string">
                    <xs:pattern value="[\da-fA-F]{8}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{12}"/>
                </xs:restriction>
            </xs:simpleType>
            <xs:attribute name="FactoryType" type="xs:QName"/>
            <xs:attribute name="Id" type="xs:ID"/>
            <xs:attribute name="Ref" type="xs:IDREF"/>
        </xs:schema>
        <xs:schema xmlns:tns="http://schemas.datacontract.org/2004/07/WAMCommon" xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2004/07/WAMCommon">
            <xs:import namespace="http://schemas.microsoft.com/2003/10/Serialization/"/>
            <xs:complexType name="PanelMemberDetails">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="Biography" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Contact" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="CorrespondenceAddress" type="tns:Address"/>
                    <xs:element minOccurs="0" name="DossierAddress" type="tns:Address"/>
                    <xs:element minOccurs="0" name="FamilyName" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="FirstAltEmail" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="FirstAltFax" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="FirstAltTelephone" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="FirstNames" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="GeneralComments" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="HomeAddress" type="tns:Address"/>
                    <xs:element minOccurs="0" name="Id" type="xs:int"/>
                    <xs:element minOccurs="0" name="NomsRegion" type="xs:int"/>
                    <xs:element minOccurs="0" name="OtherAddress" type="tns:Address"/>
                    <xs:element minOccurs="0" name="PayrollNumber" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PreferredEmail" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PreferredFax" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PreferredLocations" nillable="true" type="tns:ArrayOfEstablishments"/>
                    <xs:element minOccurs="0" name="PreferredName" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PreferredTelephone" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="SecondAltEmail" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="SecondAltFax" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="SecondAltTelephone" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="SpecialRequests" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Status" type="xs:int"/>
                    <xs:element minOccurs="0" name="SubType" type="xs:int"/>
                    <xs:element minOccurs="0" name="Title" type="xs:int"/>
                    <xs:element minOccurs="0" name="TitleSuffix" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" type="xs:int"/>
                    <xs:element minOccurs="0" name="WarningText" nillable="true" type="xs:string"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="PanelMemberDetails" nillable="true" type="tns:PanelMemberDetails"/>
            <xs:complexType name="Address">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="Address1" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Address2" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Address3" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Address4" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Comments" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="DX" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="ID" type="xs:int"/>
                    <xs:element minOccurs="0" name="IgnoreTitle" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Organisation" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Postcode" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Signatory" nillable="true" type="xs:string"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="Address" nillable="true" type="tns:Address"/>
            <xs:complexType name="ArrayOfEstablishments">
                <xs:sequence>
                    <xs:element maxOccurs="unbounded" minOccurs="0" name="Establishments" type="tns:Establishments"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="ArrayOfEstablishments" nillable="true" type="tns:ArrayOfEstablishments"/>
            <xs:complexType name="Establishments">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="Address1" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Address2" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Address3" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Address4" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Contact" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Description" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Directions" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Email" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Fax" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="ID" type="xs:int"/>
                    <xs:element minOccurs="0" name="Other" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Postcode" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Telephone" nillable="true" type="xs:string"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="Establishments" nillable="true" type="tns:Establishments"/>
            <xs:complexType name="DBCommandResult">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Status" type="tns:LoginStatus"/>
                    <xs:element minOccurs="0" name="Successful" type="xs:boolean"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="DBCommandResult" nillable="true" type="tns:DBCommandResult"/>
            <xs:simpleType name="LoginStatus">
                <xs:restriction base="xs:string">
                    <xs:enumeration value="LOGIN_STATUS_LOCKED"/>
                    <xs:enumeration value="LOGIN_STATUS_FAILED"/>
                    <xs:enumeration value="LOGIN_STATUS_SYSOPS"/>
                    <xs:enumeration value="LOGIN_STATUS_DPA"/>
                    <xs:enumeration value="LOGIN_STATUS_SUCCESS"/>
                    <xs:enumeration value="LOGIN_STATUS_PWD_CHANGE"/>
                    <xs:enumeration value="LOGIN_STATUS_PWD_CHANGE_SUCCESS"/>
                    <xs:enumeration value="LOGIN_STATUS_USER_VALIDATED"/>
                    <xs:enumeration value="LOGIN_STATUS_SET_MEMORABLE_INFO"/>
                </xs:restriction>
            </xs:simpleType>
            <xs:element name="LoginStatus" nillable="true" type="tns:LoginStatus"/>
        </xs:schema>
    </wsdl:types>
    <wsdl:message name="IPanelMember_GetPanelMemberInfo_InputMessage">
        <wsdl:part element="tns:GetPanelMemberInfo" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IPanelMember_GetPanelMemberInfo_OutputMessage">
        <wsdl:part element="tns:GetPanelMemberInfoResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IPanelMember_AddPreferredLocation_InputMessage">
        <wsdl:part element="tns:AddPreferredLocation" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IPanelMember_AddPreferredLocation_OutputMessage">
        <wsdl:part element="tns:AddPreferredLocationResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IPanelMember_DeletePreferredLocation_InputMessage">
        <wsdl:part element="tns:DeletePreferredLocation" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IPanelMember_DeletePreferredLocation_OutputMessage">
        <wsdl:part element="tns:DeletePreferredLocationResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IPanelMember_UpdatePanelMemberInfo_InputMessage">
        <wsdl:part element="tns:UpdatePanelMemberInfo" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IPanelMember_UpdatePanelMemberInfo_OutputMessage">
        <wsdl:part element="tns:UpdatePanelMemberInfoResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:portType name="IPanelMember">
        <wsdl:operation name="GetPanelMemberInfo">
            <wsdl:input message="tns:IPanelMember_GetPanelMemberInfo_InputMessage" wsaw:Action="http://tempuri.org/IPanelMember/GetPanelMemberInfo"/>
            <wsdl:output message="tns:IPanelMember_GetPanelMemberInfo_OutputMessage" wsaw:Action="http://tempuri.org/IPanelMember/GetPanelMemberInfoResponse"/>
        </wsdl:operation>
        <wsdl:operation name="AddPreferredLocation">
            <wsdl:input message="tns:IPanelMember_AddPreferredLocation_InputMessage" wsaw:Action="http://tempuri.org/IPanelMember/AddPreferredLocation"/>
            <wsdl:output message="tns:IPanelMember_AddPreferredLocation_OutputMessage" wsaw:Action="http://tempuri.org/IPanelMember/AddPreferredLocationResponse"/>
        </wsdl:operation>
        <wsdl:operation name="DeletePreferredLocation">
            <wsdl:input message="tns:IPanelMember_DeletePreferredLocation_InputMessage" wsaw:Action="http://tempuri.org/IPanelMember/DeletePreferredLocation"/>
            <wsdl:output message="tns:IPanelMember_DeletePreferredLocation_OutputMessage" wsaw:Action="http://tempuri.org/IPanelMember/DeletePreferredLocationResponse"/>
        </wsdl:operation>
        <wsdl:operation name="UpdatePanelMemberInfo">
            <wsdl:input message="tns:IPanelMember_UpdatePanelMemberInfo_InputMessage" wsaw:Action="http://tempuri.org/IPanelMember/UpdatePanelMemberInfo"/>
            <wsdl:output message="tns:IPanelMember_UpdatePanelMemberInfo_OutputMessage" wsaw:Action="http://tempuri.org/IPanelMember/UpdatePanelMemberInfoResponse"/>
        </wsdl:operation>
    </wsdl:portType>
    <wsdl:binding name="BasicHttpBinding_IPanelMember" type="tns:IPanelMember">
        <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
        <wsdl:operation name="GetPanelMemberInfo">
            <soap:operation soapAction="http://tempuri.org/IPanelMember/GetPanelMemberInfo" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="AddPreferredLocation">
            <soap:operation soapAction="http://tempuri.org/IPanelMember/AddPreferredLocation" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="DeletePreferredLocation">
            <soap:operation soapAction="http://tempuri.org/IPanelMember/DeletePreferredLocation" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="UpdatePanelMemberInfo">
            <soap:operation soapAction="http://tempuri.org/IPanelMember/UpdatePanelMemberInfo" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
    </wsdl:binding>
    <wsdl:service name="PanelMember">
        <wsdl:port binding="tns:BasicHttpBinding_IPanelMember" name="BasicHttpBinding_IPanelMember">
            <soap:address location="http://localhost:7293/PanelMember.svc"/>
        </wsdl:port>
    </wsdl:service>
</wsdl:definitions>
