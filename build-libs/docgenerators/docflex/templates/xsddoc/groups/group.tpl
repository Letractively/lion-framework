<DOCFLEX_TEMPLATE VER='1.9'>
CREATED='2005-04-26 03:31:00'
LAST_UPDATE='2007-06-30 06:10:51'
DESIGNER_TOOL='DocFlex SDK 1.x'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='xs:group'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='nsURI';
		param.displayName='Target Namespace URI';
		param.type='string';
		param.defaultExpr='schema = getXMLDocument().findChild ("xs:schema");\nschema.getAttrStringValue("targetNamespace")';
		param.hidden='true';
	}
	PARAM={
		param.name='qName';
		param.description='The <code>QName</code> object representing the group qualified name.\n<p>\nSee Expr. Assistant | XML Functions | <code>QName()</code> function.';
		param.type='object';
		param.defaultExpr='QName (getStringParam("nsURI"), getAttrStringValue("name"))';
	}
	PARAM={
		param.name='usageCount';
		param.description='number of locations where this element group is used';
		param.type='int';
		param.defaultExpr='countElementsByKey (\n  "group-usage",\n  getParam("qName")\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='contentMapKey';
		param.displayName='"content-elements" map key';
		param.description='The key for "content-elements" map to find items associated with this component';
		param.type='object';
		param.defaultExpr='contextElement.id';
		param.hidden='true';
	}
	PARAM={
		param.name='elementCount';
		param.displayName='number of all content elements';
		param.description='total number of content elements declared for this component';
		param.type='int';
		param.defaultExpr='countElementsByKey (\n  "content-elements", \n  getParam("contentMapKey"),\n  BooleanQuery (! instanceOf ("xs:any"))\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='ownElementCount';
		param.displayName='number of component\'s own content elements';
		param.description='number of content elements defined within this component';
		param.type='int';
		param.defaultExpr='countElementsByKey (\n  "content-elements", \n  getParam("contentMapKey"),\n  BooleanQuery (\n    ! instanceOf ("xs:any") &&\n    findPredecessorByType("xs:%element;xs:complexType;xs:group").id \n    == rootElement.id\n  )\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='anyElement';
		param.displayName='component has any-content-element';
		param.description='indicates that the component allows any content elements';
		param.type='boolean';
		param.defaultExpr='checkElementsByKey (\n  "content-elements", \n  getParam("contentMapKey"),\n  BooleanQuery (instanceOf ("xs:any"))\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='page.refs';
		param.displayName='Generate page references';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='doc.group.profile';
		param.displayName='Element Group Profile';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='doc.group.xmlRep';
		param.displayName='XML Representation Summary';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='doc.group.list.contentElements';
		param.displayName='List of Content Elements';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='doc.group.list.usage';
		param.displayName='Usage Locations';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='doc.group.annotation';
		param.displayName='Annotation';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='doc.group.xmlSource';
		param.displayName='XML Source';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='doc.group.contentElements';
		param.displayName='Content Element Detail';
		param.type='boolean';
	}
	PARAM={
		param.name='sec.xmlSource.box.component';
		param.displayName='Enclose in box';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='sec.xmlSource.remove.ann.component';
		param.displayName='Remove <xs:annotation> elements';
		param.type='boolean';
		param.boolean.default='true';
	}
</TEMPLATE_PARAMS>
<HTARGET>
	HKEYS={
		'contextElement.id';
		'"detail"';
	}
</HTARGET>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs5';
}
<STYLES>
	CHAR_STYLE={
		style.name='Code';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs2';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Content Model';
		style.id='cs3';
		text.font.name='Verdana';
		text.font.size='8.5';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs4';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 1';
		style.id='s1';
		text.font.size='12';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#CCCCFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='12';
		par.margin.bottom='10';
		par.padding.left='2.5';
		par.padding.right='2.5';
		par.padding.top='2';
		par.padding.bottom='2';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 2';
		style.id='s2';
		text.font.size='10';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='12';
		par.margin.bottom='10';
		par.padding.left='2';
		par.padding.right='2';
		par.padding.top='2';
		par.padding.bottom='2';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 3';
		style.id='s3';
		text.font.size='9';
		text.font.style.bold='true';
		text.font.style.italic='true';
		text.color.background='#CCCCFF';
		text.color.opaque='true';
		par.margin.top='10';
		par.margin.bottom='8';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs5';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Inset Heading';
		style.id='s4';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='6.8';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='List Heading 1';
		style.id='s5';
		text.font.name='Arial';
		text.font.size='10';
		text.font.style.bold='true';
		par.margin.top='12';
		par.margin.bottom='8';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s6';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='8';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s7';
		text.font.name='Verdana';
		text.font.size='13';
		text.font.style.bold='true';
		text.color.foreground='#4477AA';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEEE';
		par.border.style='solid';
		par.border.color='#4477AA';
		par.margin.top='0';
		par.margin.bottom='9';
		par.padding.left='5';
		par.padding.right='5';
		par.padding.top='3';
		par.padding.bottom='3';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s8';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Normal Smaller';
		style.id='cs6';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs7';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
		par.lineHeight='11';
		par.margin.right='7';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs8';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs9';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Property Text';
		style.id='cs10';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s9';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='7';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s10';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
</STYLES>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			text.style='cs8';
			table.cellpadding.both='0';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					par.border.bottom.style='solid';
				}
				<CTRLS>
					<LABEL>
						TEXT='group'
					</LABEL>
					<DATA_CTRL>
						FMT={
							text.font.style.italic='true';
						}
						FORMULA='\'"\' + getParam("qName") + \'"\''
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<AREA_SEC>
		FMT={
			par.style='s7';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						TEXT='group'
					</LABEL>
					<DATA_CTRL>
						FMT={
							text.font.style.italic='true';
						}
						FORMULA='\'"\' + getParam("qName") + \'"\''
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		DESCR='Element Group Profile'
		COND='getBooleanParam("doc.group.profile")'
		TEMPLATE_FILE='groupProfile.tpl'
	</TEMPLATE_CALL>
	<AREA_SEC>
		COND='getBooleanParam("doc.group.xmlRep")'
		FMT={
			sec.outputStyle='table';
			sec.spacing.before='12';
			sec.spacing.after='12';
			table.sizing='Relative';
			table.cellpadding.both='5';
			table.bkgr.color='#F5F5F5';
			table.border.style='solid';
			table.border.color='#999999';
			table.border.vert.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<SS_CALL_CTRL>
						FMT={
							ctrl.size.width='499.5';
							ctrl.size.height='17.3';
							tcell.sizing='Relative';
						}
						SS_NAME='Content Model'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		DESCR='Content Element List'
		COND='getBooleanParam("doc.group.list.contentElements")'
		TEMPLATE_FILE='../element/contentElementList.tpl'
		PASSED_PARAMS={
			'caption','"Content Elements"';
			'key','key = (getAttrValue("type") != "")\n  ? findElementByKey ("types", getAttrQNameValue("type")).id \n  : contextElement.id;';
		}
	</TEMPLATE_CALL>
	<FOLDER>
		DESCR='Usage Locations'
		COND='getBooleanParam("doc.group.list.usage") &&\ngetIntParam("usageCount") > 0'
		FMT={
			sec.outputStyle='list';
			list.item.margin.top='10';
			list.item.margin.bottom='10';
		}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"usage-locations"';
			}
		</HTARGET>
		COLLAPSED
		<BODY>
			<FOLDER>
				DESCR='in other groups'
				COLLAPSED
				<BODY>
					<ELEMENT_ITER>
						FMT={
							sec.outputStyle='list';
							list.type='delimited';
						}
						TARGET_ET='xs:group'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='findElementsByKey ("group-usage", getParam("qName"))'
						SORTING='by-expr'
						SORTING_KEY={expr='callStockSection("QName")',ascending,case_sensitive}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='nbsp';
										}
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='QName'
											</SS_CALL_CTRL>
											<PANEL>
												COND='output.format.supportsPagination &&\ngetBooleanParam("page.refs") &&\nhyperTargetExists (Array (contextElement.id, "detail"))'
												FMT={
													ctrl.size.width='156';
													text.style='cs9';
													txtfl.delimiter.type='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<LABEL>
																TEXT='['
															</LABEL>
															<DATA_CTRL>
																FMT={
																	ctrl.option.noHLinkFmt='true';
																	text.hlink.fmt='none';
																}
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"detail"';
																	}
																</DOC_HLINK>
																DOCFIELD='page-htarget'
															</DATA_CTRL>
															<LABEL>
																TEXT=']'
															</LABEL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s6';
								}
								<HTARGET>
									HKEYS={
										'contextElement.id';
										'"usage-locations"';
									}
								</HTARGET>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<LABEL>
												TEXT='In definitions of other model groups'
											</LABEL>
											<DATA_CTRL>
												FORMULA='"(" + iterator.numItems + ")"'
											</DATA_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<LABEL>
												TEXT=':'
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='in global complexTypes'
				COLLAPSED
				<BODY>
					<ELEMENT_ITER>
						FMT={
							sec.outputStyle='list';
							list.type='delimited';
						}
						TARGET_ET='xs:complexType'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='findElementsByKey ("group-usage", getParam("qName"))'
						SORTING='by-expr'
						SORTING_KEY={expr='callStockSection("QName")',ascending,case_sensitive}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='nbsp';
										}
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='QName'
											</SS_CALL_CTRL>
											<PANEL>
												COND='output.format.supportsPagination &&\ngetBooleanParam("page.refs") &&\nhyperTargetExists (Array (contextElement.id, "detail"))'
												FMT={
													ctrl.size.width='150';
													text.style='cs9';
													txtfl.delimiter.type='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<LABEL>
																TEXT='['
															</LABEL>
															<DATA_CTRL>
																FMT={
																	ctrl.option.noHLinkFmt='true';
																	text.hlink.fmt='none';
																}
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"detail"';
																	}
																</DOC_HLINK>
																DOCFIELD='page-htarget'
															</DATA_CTRL>
															<LABEL>
																TEXT=']'
															</LABEL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s6';
								}
								<HTARGET>
									HKEYS={
										'contextElement.id';
										'"usage-locations"';
									}
								</HTARGET>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<LABEL>
												TEXT='In definition of global complexTypes'
											</LABEL>
											<DATA_CTRL>
												FORMULA='"(" + iterator.numItems + ")"'
											</DATA_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<LABEL>
												TEXT=':'
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='in embedded complexTypes of elements'
				COLLAPSED
				<BODY>
					<ELEMENT_ITER>
						FMT={
							sec.outputStyle='list';
							list.type='delimited';
						}
						TARGET_ET='xs:%element'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='findElementsByKey ("group-usage", getParam("qName"))'
						SORTING='by-expr'
						SORTING_KEY={expr='callStockSection("Element Location")',ascending,case_sensitive}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='nbsp';
										}
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Element Location'
											</SS_CALL_CTRL>
											<PANEL>
												COND='output.format.supportsPagination &&\ngetBooleanParam("page.refs") &&\nhyperTargetExists (Array (contextElement.id, "detail"))'
												FMT={
													ctrl.size.width='161.3';
													text.style='cs9';
													txtfl.delimiter.type='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<LABEL>
																TEXT='['
															</LABEL>
															<DATA_CTRL>
																FMT={
																	ctrl.option.noHLinkFmt='true';
																	text.hlink.fmt='none';
																}
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"detail"';
																	}
																</DOC_HLINK>
																DOCFIELD='page-htarget'
															</DATA_CTRL>
															<LABEL>
																TEXT=']'
															</LABEL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s6';
								}
								<HTARGET>
									HKEYS={
										'contextElement.id';
										'"usage-locations"';
									}
								</HTARGET>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<LABEL>
												TEXT='In definitions of embedded complexTypes of elements'
											</LABEL>
											<DATA_CTRL>
												FORMULA='"(" + iterator.numItems + ")"'
											</DATA_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<LABEL>
												TEXT=':'
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<LABEL>
								TEXT='Known Usage Locations'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='Annotation'
		COND='getBooleanParam("doc.group.annotation")'
		COLLAPSED
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../ann/annotation.tpl'
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<LABEL>
								TEXT='Annotation'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='XML SOURCE'
		COND='getBooleanParam("doc.group.xmlSource")'
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"xml-source"';
			}
		</HTARGET>
		COLLAPSED
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("sec.xmlSource.box.component")'
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
					table.autofit='false';
					table.cellpadding.both='5';
					table.bkgr.color='#F5F5F5';
					table.border.style='solid';
					table.border.color='#999999';
					table.option.borderStylesInHTML='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEMPLATE_CALL_CTRL>
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
								}
								TEMPLATE_FILE='../xml/nodeSource.tpl'
								PASSED_PARAMS={
									'remove.annotations','getBooleanParam("sec.xmlSource.remove.ann.component")';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<TEMPLATE_CALL>
				COND='! getBooleanParam("sec.xmlSource.box.component")'
				TEMPLATE_FILE='../xml/nodeSource.tpl'
				PASSED_PARAMS={
					'remove.annotations','getBooleanParam("sec.xmlSource.remove.ann.component")';
				}
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<LABEL>
								TEXT='XML Source'
							</LABEL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								FMT={
									text.style='cs7';
								}
								TEMPLATE_FILE='../xml/sourceNote.tpl'
								PASSED_PARAMS={
									'remove.annotations','getBooleanParam("sec.xmlSource.remove.ann.component")';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='CONTENT ELEMENT DETAIL'
		COND='getBooleanParam("doc.group.contentElements")'
		TEMPLATE_FILE='../element/contentElements.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document"'
		TEMPLATE_FILE='../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Content Model'
		<BODY>
			<TEMPLATE_CALL>
				FMT={
					text.style='cs3';
				}
				TEMPLATE_FILE='../content/contentModel.tpl'
				PASSED_PARAMS={
					'owner_id','rootElement.id';
				}
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s4';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								TEXT='Complex Content Model'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<AREA_SEC>
		MATCHING_ET='xs:%element'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		SS_NAME='Element Location'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<SS_CALL_CTRL>
						SS_NAME='QName'
					</SS_CALL_CTRL>
					<TEMPLATE_CALL_CTRL>
						MATCHING_ET='xs:%localElement'
						TEMPLATE_FILE='../element/localElementExt.tpl'
					</TEMPLATE_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		FMT={
			par.option.nowrap='true';
		}
		SS_NAME='QName'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						<DOC_HLINK>
							HKEYS={
								'contextElement.id';
								'"detail"';
							}
						</DOC_HLINK>
						FORMULA='name = getAttrStringValue("name");\n\nschema = getXMLDocument().findChild ("xs:schema");\nnsURI = schema.getAttrStringValue("targetNamespace");\n\ninstanceOf ("xs:%localElement") ? \n{\n  ((form = getAttrStringValue("form")) == "") ? {\n    form = schema.getAttrStringValue ("elementFormDefault");\n  };\n\n  (form != "qualified") ? name : QName (nsURI, name)\n} \n: QName (nsURI, name, Enum (rootElement, contextElement))'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</STOCK_SECTIONS>
CHECKSUM='9TB3ijdMaD7q4wZ5lVpQfw'
</DOCFLEX_TEMPLATE>