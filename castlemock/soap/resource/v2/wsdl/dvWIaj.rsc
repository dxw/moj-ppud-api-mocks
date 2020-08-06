<?xml version="1.0" encoding="utf-8" standalone="no"?>
<wsdl:definitions xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://tempuri.org/" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Minutes" targetNamespace="http://tempuri.org/">
    <wsdl:types>
        <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
            <xs:import namespace="http://schemas.datacontract.org/2004/07/Common.Repositories"/>
            <xs:element name="GetHeaders">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="formName" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="formId" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetHeadersResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q1="http://schemas.datacontract.org/2004/07/Common.Repositories" minOccurs="0" name="GetHeadersResult" nillable="true" type="q1:MinutesData"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetContent">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="formName" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="formId" type="xs:int"/>
                        <xs:element minOccurs="0" name="minuteIDString" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetContentResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q2="http://schemas.datacontract.org/2004/07/Common.Repositories" minOccurs="0" name="GetContentResult" nillable="true" type="q2:MinutesData"/>
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
        <xs:schema xmlns:tns="http://schemas.datacontract.org/2004/07/Common.Repositories" xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2004/07/Common.Repositories">
            <xs:complexType name="MinutesData">
                <xs:sequence>
                    <xs:element minOccurs="0" name="CHANGED" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Data" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="ShowTree" type="xs:boolean"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="MinutesData" nillable="true" type="tns:MinutesData"/>
        </xs:schema>
    </wsdl:types>
    <wsdl:message name="IMinutes_GetHeaders_InputMessage">
        <wsdl:part element="tns:GetHeaders" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IMinutes_GetHeaders_OutputMessage">
        <wsdl:part element="tns:GetHeadersResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IMinutes_GetContent_InputMessage">
        <wsdl:part element="tns:GetContent" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IMinutes_GetContent_OutputMessage">
        <wsdl:part element="tns:GetContentResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:portType name="IMinutes">
        <wsdl:operation name="GetHeaders">
            <wsdl:input message="tns:IMinutes_GetHeaders_InputMessage" wsaw:Action="http://tempuri.org/IMinutes/GetHeaders"/>
            <wsdl:output message="tns:IMinutes_GetHeaders_OutputMessage" wsaw:Action="http://tempuri.org/IMinutes/GetHeadersResponse"/>
        </wsdl:operation>
        <wsdl:operation name="GetContent">
            <wsdl:input message="tns:IMinutes_GetContent_InputMessage" wsaw:Action="http://tempuri.org/IMinutes/GetContent"/>
            <wsdl:output message="tns:IMinutes_GetContent_OutputMessage" wsaw:Action="http://tempuri.org/IMinutes/GetContentResponse"/>
        </wsdl:operation>
    </wsdl:portType>
    <wsdl:binding name="BasicHttpBinding_IMinutes" type="tns:IMinutes">
        <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
        <wsdl:operation name="GetHeaders">
            <soap:operation soapAction="http://tempuri.org/IMinutes/GetHeaders" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="GetContent">
            <soap:operation soapAction="http://tempuri.org/IMinutes/GetContent" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
    </wsdl:binding>
    <wsdl:service name="Minutes">
        <wsdl:port binding="tns:BasicHttpBinding_IMinutes" name="BasicHttpBinding_IMinutes">
            <soap:address location="http://localhost:7293/Minutes.svc"/>
        </wsdl:port>
    </wsdl:service>
</wsdl:definitions>
