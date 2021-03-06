<%@ page errorPage="/errorhandler.jsp" %>
<%@ page import="org.openmrs.web.WebConstants" %>
<%--
  ~ The contents of this file are subject to the OpenMRS Public License
  ~ Version 2.0 (the "License"); you may not use this file except in
  ~ compliance with the License. You may obtain a copy of the License at
  ~ http://license.openmrs.org
  ~
  ~ Software distributed under the License is distributed on an "AS IS"
  ~ basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
  ~ License for the specific language governing rights and limitations
  ~ under the License.
  ~
  ~ Copyright (C) OpenMRS, LLC.  All Rights Reserved.
  --%>
<%
	String useMinimalHeader = (String)session.getAttribute(WebConstants.OPENMRS_HEADER_USE_MINIMAL);
	if ("true".equals(useMinimalHeader)){
	   pageContext.setAttribute("useMinimalHeader", new Boolean(true));
	   session.removeAttribute(WebConstants.OPENMRS_HEADER_USE_MINIMAL);
	}
%>

<c:choose>
	<c:when test="${useMinimalHeader}">
		<%@ include file="headerMinimal.jsp" %>
	</c:when>
	<c:otherwise>
		<%@ include file="headerFull.jsp" %>
	</c:otherwise>
</c:choose>
