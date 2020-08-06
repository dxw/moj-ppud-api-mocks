<?xml version="1.0" encoding="utf-8" standalone="no"?>
<wsdl:definitions xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://tempuri.org/" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="WAMMessage" targetNamespace="http://tempuri.org/">
    <wsdl:types>
        <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
            <xs:import namespace="http://schemas.datacontract.org/2004/07/Common.DataObjects"/>
            <xs:element name="GetMessages">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="page" type="xs:int"/>
                        <xs:element minOccurs="0" name="pageSize" type="xs:int"/>
                        <xs:element minOccurs="0" name="showRead" type="xs:boolean"/>
                        <xs:element minOccurs="0" name="showActioned" type="xs:boolean"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetMessagesResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q1="http://schemas.datacontract.org/2004/07/Common.DataObjects" minOccurs="0" name="GetMessagesResult" nillable="true" type="q1:ArrayOfWAMMessage"/>
                        <xs:element minOccurs="0" name="totalRows" type="xs:int"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetMessageContent">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="message" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetMessageContentResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="GetMessageContentResult" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="SetActioned">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="messageCaseworkerId" type="xs:int"/>
                        <xs:element minOccurs="0" name="actioned" nillable="true" type="xs:dateTime"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="SetActionedResponse">
                <xs:complexType>
                    <xs:sequence/>
                </xs:complexType>
            </xs:element>
            <xs:element name="SetRead">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="messageCaseworkerId" type="xs:int"/>
                        <xs:element minOccurs="0" name="read" nillable="true" type="xs:dateTime"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="SetReadResponse">
                <xs:complexType>
                    <xs:sequence/>
                </xs:complexType>
            </xs:element>
            <xs:element name="SetDeleted">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="messageCaseworkerId" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="SetDeletedResponse">
                <xs:complexType>
                    <xs:sequence/>
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
        <xs:schema xmlns:tns="http://schemas.datacontract.org/2004/07/Common.DataObjects" xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2004/07/Common.DataObjects">
            <xs:complexType name="ArrayOfWAMMessage">
                <xs:sequence>
                    <xs:element maxOccurs="unbounded" minOccurs="0" name="WAMMessage" nillable="true" type="tns:WAMMessage"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="ArrayOfWAMMessage" nillable="true" type="tns:ArrayOfWAMMessage"/>
            <xs:complexType name="WAMMessage">
                <xs:sequence>
                    <xs:element minOccurs="0" name="AssociatedId" nillable="true" type="xs:int"/>
                    <xs:element minOccurs="0" name="AutomatedType" type="xs:int"/>
                    <xs:element minOccurs="0" name="Caseworker" type="xs:int"/>
                    <xs:element minOccurs="0" name="Content" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Date" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="DateActioned" nillable="true" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="DateRead" nillable="true" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="From" type="xs:int"/>
                    <xs:element minOccurs="0" name="Id" type="xs:int"/>
                    <xs:element minOccurs="0" name="MessageCaseworkerId" type="xs:int"/>
                    <xs:element minOccurs="0" name="Priority" type="xs:int"/>
                    <xs:element minOccurs="0" name="Subject" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="TeamTo" type="xs:int"/>
                    <xs:element minOccurs="0" name="To" type="xs:int"/>
                    <xs:element minOccurs="0" name="Type" type="xs:int"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="WAMMessage" nillable="true" type="tns:WAMMessage"/>
        </xs:schema>
    </wsdl:types>
    <wsdl:message name="IWAMMessage_GetMessages_InputMessage">
        <wsdl:part element="tns:GetMessages" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_GetMessages_OutputMessage">
        <wsdl:part element="tns:GetMessagesResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_GetMessageContent_InputMessage">
        <wsdl:part element="tns:GetMessageContent" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_GetMessageContent_OutputMessage">
        <wsdl:part element="tns:GetMessageContentResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_SetActioned_InputMessage">
        <wsdl:part element="tns:SetActioned" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_SetActioned_OutputMessage">
        <wsdl:part element="tns:SetActionedResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_SetRead_InputMessage">
        <wsdl:part element="tns:SetRead" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_SetRead_OutputMessage">
        <wsdl:part element="tns:SetReadResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_SetDeleted_InputMessage">
        <wsdl:part element="tns:SetDeleted" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IWAMMessage_SetDeleted_OutputMessage">
        <wsdl:part element="tns:SetDeletedResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:portType name="IWAMMessage">
        <wsdl:operation name="GetMessages">
            <wsdl:input message="tns:IWAMMessage_GetMessages_InputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/GetMessages"/>
            <wsdl:output message="tns:IWAMMessage_GetMessages_OutputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/GetMessagesResponse"/>
        </wsdl:operation>
        <wsdl:operation name="GetMessageContent">
            <wsdl:input message="tns:IWAMMessage_GetMessageContent_InputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/GetMessageContent"/>
            <wsdl:output message="tns:IWAMMessage_GetMessageContent_OutputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/GetMessageContentResponse"/>
        </wsdl:operation>
        <wsdl:operation name="SetActioned">
            <wsdl:input message="tns:IWAMMessage_SetActioned_InputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/SetActioned"/>
            <wsdl:output message="tns:IWAMMessage_SetActioned_OutputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/SetActionedResponse"/>
        </wsdl:operation>
        <wsdl:operation name="SetRead">
            <wsdl:input message="tns:IWAMMessage_SetRead_InputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/SetRead"/>
            <wsdl:output message="tns:IWAMMessage_SetRead_OutputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/SetReadResponse"/>
        </wsdl:operation>
        <wsdl:operation name="SetDeleted">
            <wsdl:input message="tns:IWAMMessage_SetDeleted_InputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/SetDeleted"/>
            <wsdl:output message="tns:IWAMMessage_SetDeleted_OutputMessage" wsaw:Action="http://tempuri.org/IWAMMessage/SetDeletedResponse"/>
        </wsdl:operation>
    </wsdl:portType>
    <wsdl:binding name="BasicHttpBinding_IWAMMessage" type="tns:IWAMMessage">
        <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
        <wsdl:operation name="GetMessages">
            <soap:operation soapAction="http://tempuri.org/IWAMMessage/GetMessages" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="GetMessageContent">
            <soap:operation soapAction="http://tempuri.org/IWAMMessage/GetMessageContent" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="SetActioned">
            <soap:operation soapAction="http://tempuri.org/IWAMMessage/SetActioned" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="SetRead">
            <soap:operation soapAction="http://tempuri.org/IWAMMessage/SetRead" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="SetDeleted">
            <soap:operation soapAction="http://tempuri.org/IWAMMessage/SetDeleted" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
    </wsdl:binding>
    <wsdl:service name="WAMMessage">
        <wsdl:port binding="tns:BasicHttpBinding_IWAMMessage" name="BasicHttpBinding_IWAMMessage">
            <soap:address location="http://localhost:7293/WAMMessage.svc"/>
        </wsdl:port>
    </wsdl:service>
</wsdl:definitions>
