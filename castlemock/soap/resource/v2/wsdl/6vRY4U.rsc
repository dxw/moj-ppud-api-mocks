<?xml version="1.0" encoding="utf-8" standalone="no"?>
<wsdl:definitions xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://tempuri.org/" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Review" targetNamespace="http://tempuri.org/">
    <wsdl:types>
        <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
            <xs:import namespace="http://schemas.datacontract.org/2004/07/WAMCommon"/>
            <xs:element name="GetReviewInfo">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="review" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetReviewInfoResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q1="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="GetReviewInfoResult" type="q1:ReviewInfo"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetReviews">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="offender" type="xs:int"/>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetReviewsResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q2="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="GetReviewsResult" nillable="true" type="q2:ArrayOfReviewInfo"/>
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
            <xs:complexType name="ReviewInfo">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="Date" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="Id" type="xs:int"/>
                    <xs:element minOccurs="0" name="IsLatestActiveReview" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="PBCaseworkerEmail" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PBCaseworkerName" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PBCaseworkerPhone" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PPCSCaseworkerEmail" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PPCSCaseworkerName" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="PPCSCaseworkerPhone" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="RecallDate" nillable="true" type="xs:dateTime"/>
                    <xs:element minOccurs="0" name="Status" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Type" nillable="true" type="xs:string"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="ReviewInfo" nillable="true" type="tns:ReviewInfo"/>
            <xs:complexType name="ArrayOfReviewInfo">
                <xs:sequence>
                    <xs:element maxOccurs="unbounded" minOccurs="0" name="ReviewInfo" type="tns:ReviewInfo"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="ArrayOfReviewInfo" nillable="true" type="tns:ArrayOfReviewInfo"/>
        </xs:schema>
    </wsdl:types>
    <wsdl:message name="IReview_GetReviewInfo_InputMessage">
        <wsdl:part element="tns:GetReviewInfo" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IReview_GetReviewInfo_OutputMessage">
        <wsdl:part element="tns:GetReviewInfoResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IReview_GetReviews_InputMessage">
        <wsdl:part element="tns:GetReviews" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="IReview_GetReviews_OutputMessage">
        <wsdl:part element="tns:GetReviewsResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:portType name="IReview">
        <wsdl:operation name="GetReviewInfo">
            <wsdl:input message="tns:IReview_GetReviewInfo_InputMessage" wsaw:Action="http://tempuri.org/IReview/GetReviewInfo"/>
            <wsdl:output message="tns:IReview_GetReviewInfo_OutputMessage" wsaw:Action="http://tempuri.org/IReview/GetReviewInfoResponse"/>
        </wsdl:operation>
        <wsdl:operation name="GetReviews">
            <wsdl:input message="tns:IReview_GetReviews_InputMessage" wsaw:Action="http://tempuri.org/IReview/GetReviews"/>
            <wsdl:output message="tns:IReview_GetReviews_OutputMessage" wsaw:Action="http://tempuri.org/IReview/GetReviewsResponse"/>
        </wsdl:operation>
    </wsdl:portType>
    <wsdl:binding name="BasicHttpBinding_IReview" type="tns:IReview">
        <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
        <wsdl:operation name="GetReviewInfo">
            <soap:operation soapAction="http://tempuri.org/IReview/GetReviewInfo" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="GetReviews">
            <soap:operation soapAction="http://tempuri.org/IReview/GetReviews" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
    </wsdl:binding>
    <wsdl:service name="Review">
        <wsdl:port binding="tns:BasicHttpBinding_IReview" name="BasicHttpBinding_IReview">
            <soap:address location="http://localhost:7293/Review.svc"/>
        </wsdl:port>
    </wsdl:service>
</wsdl:definitions>
