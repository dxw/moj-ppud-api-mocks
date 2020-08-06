<?xml version="1.0" encoding="utf-8" standalone="no"?>
<wsdl:definitions xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://tempuri.org/" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Panel" targetNamespace="http://tempuri.org/">
    <wsdl:types>
        <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
            <xs:import namespace="http://schemas.datacontract.org/2004/07/WAMCommon"/>
            <xs:element name="GetPanelInfo">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="panel" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetPanelInfoResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q1="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="GetPanelInfoResult" type="q1:PanelInfo"/>
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
            <xs:complexType name="PanelInfo">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="EndDate" nillable="true" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="EstablishmentContact" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="EstablishmentContactEmail" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="EstablishmentContactFax" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="EstablishmentContactTel" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Hearings" nillable="true" type="tns:ArrayOfHearingLine"/>
                    <xs:element minOccurs="0" name="Id" type="xs:int"/>
                    <xs:element minOccurs="0" name="IsPaper" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="Location" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Members" nillable="true" type="tns:ArrayOfPanelMemberInfo"/>
                    <xs:element minOccurs="0" name="StartDate" nillable="true" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="Type" nillable="true" type="xs:string"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="PanelInfo" nillable="true" type="tns:PanelInfo"/>
            <xs:complexType name="ArrayOfHearingLine">
                <xs:sequence>
                    <xs:element maxOccurs="unbounded" minOccurs="0" name="HearingLine" nillable="true" type="tns:HearingLine"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="ArrayOfHearingLine" nillable="true" type="tns:ArrayOfHearingLine"/>
            <xs:complexType name="HearingLine">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Comments" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="CurrentTargetDate" nillable="true" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="DossierBaselineId" type="xs:int"/>
                    <xs:element minOccurs="0" name="DossierDocumentId" type="xs:int"/>
                    <xs:element minOccurs="0" name="EstimatedDuration" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="HearingAccessible" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="HearingType" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Id" type="xs:int"/>
                    <xs:element minOccurs="0" name="IsActive" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="IsAllowWAMAccess" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="IsLatestActiveReview" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="IsPrimary" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="IsReviewActive" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="MembersRequired" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Offender" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="OffenderId" type="xs:int"/>
                    <xs:element minOccurs="0" name="OriginalTargetDate" nillable="true" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="PrisonNumber" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="ReviewId" type="xs:int"/>
                    <xs:element minOccurs="0" name="ReviewType" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="StartDate" nillable="true" type="xs:dateTime"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="HearingLine" nillable="true" type="tns:HearingLine"/>
            <xs:complexType name="ArrayOfPanelMemberInfo">
                <xs:sequence>
                    <xs:element maxOccurs="unbounded" minOccurs="0" name="PanelMemberInfo" type="tns:PanelMemberInfo"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="ArrayOfPanelMemberInfo" nillable="true" type="tns:ArrayOfPanelMemberInfo"/>
            <xs:complexType name="PanelMemberInfo">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="Email" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Id" type="xs:int"/>
                    <xs:element minOccurs="0" name="Name" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Role" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" nillable="true" type="xs:string"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="PanelMemberInfo" nillable="true" type="tns:PanelMemberInfo"/>
        </xs:schema>
    </wsdl:types>
    <wsdl:message name="IPanel_GetPanelInfo_InputMessage">
        <wsdl:part element="tns:GetPanelInfo" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IPanel_GetPanelInfo_OutputMessage">
        <wsdl:part element="tns:GetPanelInfoResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:portType name="IPanel">
        <wsdl:operation name="GetPanelInfo">
            <wsdl:input message="tns:IPanel_GetPanelInfo_InputMessage" wsaw:Action="http://tempuri.org/IPanel/GetPanelInfo"/>
            <wsdl:output message="tns:IPanel_GetPanelInfo_OutputMessage" wsaw:Action="http://tempuri.org/IPanel/GetPanelInfoResponse"/>
        </wsdl:operation>
    </wsdl:portType>
    <wsdl:binding name="BasicHttpBinding_IPanel" type="tns:IPanel">
        <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
        <wsdl:operation name="GetPanelInfo">
            <soap:operation soapAction="http://tempuri.org/IPanel/GetPanelInfo" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
    </wsdl:binding>
    <wsdl:service name="Panel">
        <wsdl:port binding="tns:BasicHttpBinding_IPanel" name="BasicHttpBinding_IPanel">
            <soap:address location="http://localhost:7293/Panel.svc"/>
        </wsdl:port>
    </wsdl:service>
</wsdl:definitions>
