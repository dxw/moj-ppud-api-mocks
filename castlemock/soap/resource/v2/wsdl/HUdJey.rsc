<?xml version="1.0" encoding="utf-8" standalone="no"?>
<wsdl:definitions xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://tempuri.org/" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Security" targetNamespace="http://tempuri.org/">
    <wsdl:types>
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
            <xs:complexType name="LoginState">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="memorableWordLength" type="xs:int"/>
                    <xs:element minOccurs="0" name="status" type="tns:LoginStatus"/>
                    <xs:element minOccurs="0" name="text" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="wamUserDetails" type="tns:WamUserDetails"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="LoginState" nillable="true" type="tns:LoginState"/>
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
            <xs:complexType name="WamUserDetails">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="panelMember" type="xs:int"/>
                    <xs:element minOccurs="0" name="role" type="tns:WamRole"/>
                    <xs:element minOccurs="0" name="showAlerts" type="xs:boolean"/>
                    <xs:element minOccurs="0" name="solicitor" type="xs:int"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="WamUserDetails" nillable="true" type="tns:WamUserDetails"/>
            <xs:simpleType name="WamRole">
                <xs:restriction base="xs:string">
                    <xs:enumeration value="EMPTY"/>
                    <xs:enumeration value="NOT_SPECIFIED"/>
                    <xs:enumeration value="NOT_APPLICABLE"/>
                    <xs:enumeration value="PANEL_MEMBER"/>
                    <xs:enumeration value="SOLCITOR"/>
                    <xs:enumeration value="ADMINSTRATOR"/>
                    <xs:enumeration value="RA"/>
                </xs:restriction>
            </xs:simpleType>
            <xs:element name="WamRole" nillable="true" type="tns:WamRole"/>
            <xs:simpleType name="ResetPasswordResult">
                <xs:restriction base="xs:string">
                    <xs:enumeration value="Success"/>
                    <xs:enumeration value="Failure"/>
                    <xs:enumeration value="TokenInvalid"/>
                </xs:restriction>
            </xs:simpleType>
            <xs:element name="ResetPasswordResult" nillable="true" type="tns:ResetPasswordResult"/>
            <xs:complexType name="ArrayOfMemorableAnswer">
                <xs:sequence>
                    <xs:element maxOccurs="unbounded" minOccurs="0" name="MemorableAnswer" nillable="true" type="tns:MemorableAnswer"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="ArrayOfMemorableAnswer" nillable="true" type="tns:ArrayOfMemorableAnswer"/>
            <xs:complexType name="MemorableAnswer">
                <xs:sequence>
                    <xs:element minOccurs="0" name="Character" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Position" type="xs:int"/>
                    <xs:element minOccurs="0" name="PositionDescription" nillable="true" type="xs:string"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="MemorableAnswer" nillable="true" type="tns:MemorableAnswer"/>
            <xs:complexType name="PasswordResetDetails">
                <xs:annotation>
                    <xs:appinfo>
                        <IsValueType xmlns="http://schemas.microsoft.com/2003/10/Serialization/">true</IsValueType>
                    </xs:appinfo>
                </xs:annotation>
                <xs:sequence>
                    <xs:element minOccurs="0" name="MemorableInfo" nillable="true" type="xs:string"/>
                    <xs:element minOccurs="0" name="Username" nillable="true" type="xs:string"/>
                </xs:sequence>
            </xs:complexType>
            <xs:element name="PasswordResetDetails" nillable="true" type="tns:PasswordResetDetails"/>
        </xs:schema>
        <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
            <xs:import namespace="http://schemas.datacontract.org/2004/07/WAMCommon"/>
            <xs:element name="Login">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="password" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="ipAddress" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="Browser" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="LoginResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q1="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="LoginResult" type="q1:LoginState"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="AgreeDPA">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="agree" type="xs:boolean"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="AgreeDPAResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q2="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="AgreeDPAResult" type="q2:LoginState"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="AgreeSysOps">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="agree" type="xs:boolean"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="AgreeSysOpsResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q3="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="AgreeSysOpsResult" type="q3:LoginState"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="PasswordChange">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="oldPassword" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="newPassword" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="PasswordChangeResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q4="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="PasswordChangeResult" type="q4:LoginState"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ResetPassword">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="passwordResetToken" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="newPassword" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ResetPasswordResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q5="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="ResetPasswordResult" type="q5:ResetPasswordResult"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ActivateAccount">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="activationToken" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="password" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="ipAddress" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="browser" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ActivateAccountResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="ActivateAccountResult" type="xs:boolean"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="RequestPassword">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="RequestPasswordResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="RequestPasswordResult" type="xs:boolean"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ValidatePassPhrase">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element xmlns:q6="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="passPhrase" nillable="true" type="q6:ArrayOfMemorableAnswer"/>
                        <xs:element minOccurs="0" name="ipAddress" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="browser" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ValidatePassPhraseResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q7="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="ValidatePassPhraseResult" type="q7:LoginState"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="SetMemorableWord">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="memorableWord" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="isInitialSetup" type="xs:boolean"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="SetMemorableWordResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="SetMemorableWordResult" type="xs:boolean"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ResetMemorableInformation">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userName" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ResetMemorableInformationResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="ResetMemorableInformationResult" type="xs:boolean"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetDetailsFromResetPasswordToken">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="GetDetailsFromResetPasswordTokenResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element xmlns:q8="http://schemas.datacontract.org/2004/07/WAMCommon" minOccurs="0" name="GetDetailsFromResetPasswordTokenResult" type="q8:PasswordResetDetails"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ValidateToken">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="userId" nillable="true" type="xs:string"/>
                        <xs:element minOccurs="0" name="token" nillable="true" type="xs:string"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element name="ValidateTokenResponse">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element minOccurs="0" name="ValidateTokenResult" type="xs:boolean"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
        </xs:schema>
    </wsdl:types>
    <wsdl:message name="ISecurity_Login_InputMessage">
        <wsdl:part element="tns:Login" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_Login_OutputMessage">
        <wsdl:part element="tns:LoginResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_AgreeDPA_InputMessage">
        <wsdl:part element="tns:AgreeDPA" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_AgreeDPA_OutputMessage">
        <wsdl:part element="tns:AgreeDPAResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_AgreeSysOps_InputMessage">
        <wsdl:part element="tns:AgreeSysOps" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_AgreeSysOps_OutputMessage">
        <wsdl:part element="tns:AgreeSysOpsResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_PasswordChange_InputMessage">
        <wsdl:part element="tns:PasswordChange" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_PasswordChange_OutputMessage">
        <wsdl:part element="tns:PasswordChangeResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ResetPassword_InputMessage">
        <wsdl:part element="tns:ResetPassword" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ResetPassword_OutputMessage">
        <wsdl:part element="tns:ResetPasswordResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ActivateAccount_InputMessage">
        <wsdl:part element="tns:ActivateAccount" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ActivateAccount_OutputMessage">
        <wsdl:part element="tns:ActivateAccountResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_RequestPassword_InputMessage">
        <wsdl:part element="tns:RequestPassword" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_RequestPassword_OutputMessage">
        <wsdl:part element="tns:RequestPasswordResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ValidatePassPhrase_InputMessage">
        <wsdl:part element="tns:ValidatePassPhrase" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ValidatePassPhrase_OutputMessage">
        <wsdl:part element="tns:ValidatePassPhraseResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_SetMemorableWord_InputMessage">
        <wsdl:part element="tns:SetMemorableWord" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_SetMemorableWord_OutputMessage">
        <wsdl:part element="tns:SetMemorableWordResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ResetMemorableInformation_InputMessage">
        <wsdl:part element="tns:ResetMemorableInformation" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ResetMemorableInformation_OutputMessage">
        <wsdl:part element="tns:ResetMemorableInformationResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_GetDetailsFromResetPasswordToken_InputMessage">
        <wsdl:part element="tns:GetDetailsFromResetPasswordToken" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_GetDetailsFromResetPasswordToken_OutputMessage">
        <wsdl:part element="tns:GetDetailsFromResetPasswordTokenResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ValidateToken_InputMessage">
        <wsdl:part element="tns:ValidateToken" name="parameters"/>
    </wsdl:message>
    <wsdl:message name="ISecurity_ValidateToken_OutputMessage">
        <wsdl:part element="tns:ValidateTokenResponse" name="parameters"/>
    </wsdl:message>
    <wsdl:portType name="ISecurity">
        <wsdl:operation name="Login">
            <wsdl:input message="tns:ISecurity_Login_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/Login"/>
            <wsdl:output message="tns:ISecurity_Login_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/LoginResponse"/>
        </wsdl:operation>
        <wsdl:operation name="AgreeDPA">
            <wsdl:input message="tns:ISecurity_AgreeDPA_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/AgreeDPA"/>
            <wsdl:output message="tns:ISecurity_AgreeDPA_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/AgreeDPAResponse"/>
        </wsdl:operation>
        <wsdl:operation name="AgreeSysOps">
            <wsdl:input message="tns:ISecurity_AgreeSysOps_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/AgreeSysOps"/>
            <wsdl:output message="tns:ISecurity_AgreeSysOps_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/AgreeSysOpsResponse"/>
        </wsdl:operation>
        <wsdl:operation name="PasswordChange">
            <wsdl:input message="tns:ISecurity_PasswordChange_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/PasswordChange"/>
            <wsdl:output message="tns:ISecurity_PasswordChange_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/PasswordChangeResponse"/>
        </wsdl:operation>
        <wsdl:operation name="ResetPassword">
            <wsdl:input message="tns:ISecurity_ResetPassword_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/ResetPassword"/>
            <wsdl:output message="tns:ISecurity_ResetPassword_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/ResetPasswordResponse"/>
        </wsdl:operation>
        <wsdl:operation name="ActivateAccount">
            <wsdl:input message="tns:ISecurity_ActivateAccount_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/ActivateAccount"/>
            <wsdl:output message="tns:ISecurity_ActivateAccount_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/ActivateAccountResponse"/>
        </wsdl:operation>
        <wsdl:operation name="RequestPassword">
            <wsdl:input message="tns:ISecurity_RequestPassword_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/RequestPassword"/>
            <wsdl:output message="tns:ISecurity_RequestPassword_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/RequestPasswordResponse"/>
        </wsdl:operation>
        <wsdl:operation name="ValidatePassPhrase">
            <wsdl:input message="tns:ISecurity_ValidatePassPhrase_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/ValidatePassPhrase"/>
            <wsdl:output message="tns:ISecurity_ValidatePassPhrase_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/ValidatePassPhraseResponse"/>
        </wsdl:operation>
        <wsdl:operation name="SetMemorableWord">
            <wsdl:input message="tns:ISecurity_SetMemorableWord_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/SetMemorableWord"/>
            <wsdl:output message="tns:ISecurity_SetMemorableWord_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/SetMemorableWordResponse"/>
        </wsdl:operation>
        <wsdl:operation name="ResetMemorableInformation">
            <wsdl:input message="tns:ISecurity_ResetMemorableInformation_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/ResetMemorableInformation"/>
            <wsdl:output message="tns:ISecurity_ResetMemorableInformation_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/ResetMemorableInformationResponse"/>
        </wsdl:operation>
        <wsdl:operation name="GetDetailsFromResetPasswordToken">
            <wsdl:input message="tns:ISecurity_GetDetailsFromResetPasswordToken_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/GetDetailsFromResetPasswordToken"/>
            <wsdl:output message="tns:ISecurity_GetDetailsFromResetPasswordToken_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/GetDetailsFromResetPasswordTokenResponse"/>
        </wsdl:operation>
        <wsdl:operation name="ValidateToken">
            <wsdl:input message="tns:ISecurity_ValidateToken_InputMessage" wsaw:Action="http://tempuri.org/ISecurity/ValidateToken"/>
            <wsdl:output message="tns:ISecurity_ValidateToken_OutputMessage" wsaw:Action="http://tempuri.org/ISecurity/ValidateTokenResponse"/>
        </wsdl:operation>
    </wsdl:portType>
    <wsdl:binding name="BasicHttpBinding_ISecurity" type="tns:ISecurity">
        <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
        <wsdl:operation name="Login">
            <soap:operation soapAction="http://tempuri.org/ISecurity/Login" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="AgreeDPA">
            <soap:operation soapAction="http://tempuri.org/ISecurity/AgreeDPA" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="AgreeSysOps">
            <soap:operation soapAction="http://tempuri.org/ISecurity/AgreeSysOps" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="PasswordChange">
            <soap:operation soapAction="http://tempuri.org/ISecurity/PasswordChange" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="ResetPassword">
            <soap:operation soapAction="http://tempuri.org/ISecurity/ResetPassword" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="ActivateAccount">
            <soap:operation soapAction="http://tempuri.org/ISecurity/ActivateAccount" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="RequestPassword">
            <soap:operation soapAction="http://tempuri.org/ISecurity/RequestPassword" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="ValidatePassPhrase">
            <soap:operation soapAction="http://tempuri.org/ISecurity/ValidatePassPhrase" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="SetMemorableWord">
            <soap:operation soapAction="http://tempuri.org/ISecurity/SetMemorableWord" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="ResetMemorableInformation">
            <soap:operation soapAction="http://tempuri.org/ISecurity/ResetMemorableInformation" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="GetDetailsFromResetPasswordToken">
            <soap:operation soapAction="http://tempuri.org/ISecurity/GetDetailsFromResetPasswordToken" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
        <wsdl:operation name="ValidateToken">
            <soap:operation soapAction="http://tempuri.org/ISecurity/ValidateToken" style="document"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
        </wsdl:operation>
    </wsdl:binding>
    <wsdl:service name="Security">
        <wsdl:port binding="tns:BasicHttpBinding_ISecurity" name="BasicHttpBinding_ISecurity">
            <soap:address location="http://localhost:7293/Security.svc"/>
        </wsdl:port>
    </wsdl:service>
</wsdl:definitions>
