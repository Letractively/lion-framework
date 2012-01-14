<DOCFLEX_TEMPLATE VER='1.9'>
CREATED='2005-04-26 03:31:00'
LAST_UPDATE='2007-06-30 06:10:52'
DESIGNER_TOOL='DocFlex SDK 1.x'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:complexType';'xs:simpleType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='page.refs';
		param.displayName='Generate page references';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='directSubtypes';
		param.displayName='List of Direct Subtypes';
		param.type='boolean';
	}
	PARAM={
		param.name='indirectSubtypes';
		param.displayName='List of Indirect Subtypes';
		param.type='boolean';
	}
	PARAM={
		param.name='basedElements';
		param.displayName='List of All Based Elements';
		param.type='boolean';
	}
	PARAM={
		param.name='basedAttributes';
		param.displayName='List of All Based Attributes';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='List Heading 1';
		style.id='s1';
		text.font.name='Arial';
		text.font.size='10';
		text.font.style.bold='true';
		par.margin.top='12';
		par.margin.bottom='8';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size='8';
	}
</STYLES>
<ROOT>
	<ELEMENT_ITER>
		DESCR='Known Direct Subtypes'
		COND='getBooleanParam("directSubtypes")'
		FMT={
			sec.outputStyle='list';
			sec.spacing.before='12';
			sec.spacing.after='12';
			list.type='delimited';
			list.margin.block='true';
		}
		TARGET_ETS={'xs:complexType';'xs:simpleType'}
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("direct-subtypes", contextElement.id)'
		SORTING='by-expr'
		SORTING_KEY={expr='callStockSection("QName")',ascending}
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
									text.style='cs3';
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
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								TEXT='Known Direct Subtypes'
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
	<ELEMENT_ITER>
		DESCR='Known Indirect Subtypes'
		COND='getBooleanParam("indirectSubtypes")'
		FMT={
			sec.outputStyle='list';
			sec.spacing.before='12';
			sec.spacing.after='12';
			list.type='delimited';
			list.margin.block='true';
		}
		TARGET_ETS={'xs:complexType';'xs:simpleType'}
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("indirect-subtypes", contextElement.id)'
		SORTING='by-expr'
		SORTING_KEY={expr='callStockSection("QName")',ascending}
		COLLAPSED
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
									text.style='cs3';
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
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								TEXT='Known Indirect Subtypes'
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
	<FOLDER>
		DESCR='All direct/indirect based elements'
		COND='getBooleanParam("basedElements") &&\ncheckElementsByKey ("derived-elements", contextElement.id)'
		INIT_EXPR='v = findElementsByKey (\n  "derived-elements", contextElement.id\n).toVector();\n\nv.sortVector (\n  @el,\n  FlexQuery (\n    callStockSection (el.toElement(), "Element Location")\n  )\n);\n\nsetVar ("derived-elements", v)'
		COLLAPSED
		<BODY>
			<FOLDER>
				DESCR='if there are local elements, print everything as two column list, so the modifers will look more readable'
				COND='findElementByType (\n  getVar ("derived-elements").toVector(),\n  "xs:%localElement"\n) != null'
				INIT_EXPR='sortVector (\n  getVar ("derived-elements").toVector(),\n  @el,\n  FlexQuery (callStockSection (el.toElement(), "Element Location"))\n)\n'
				FMT={
					sec.indent.block='true';
				}
				<BODY>
					<AREA_SEC>
						FMT={
							sec.outputStyle='table';
							table.cellpadding.both='0';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.align.vert='Top';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										FMT={
											ctrl.size.width='209.3';
											ctrl.size.height='17.3';
										}
										SS_NAME='Element List Column'
										PARAMS_EXPR='v = getVar ("derived-elements").toVector();\nN = v.size();\n\nArray (\n  v.subVector (0, (N + 1) / 2),\n  N == 1\n)'
									</SS_CALL_CTRL>
									<SS_CALL_CTRL>
										FMT={
											ctrl.size.width='272.3';
											ctrl.size.height='17.3';
											tcell.padding.extra.left='12';
										}
										SS_NAME='Element List Column'
										PARAMS_EXPR='v = getVar ("derived-elements").toVector();\n\nArray (\n  v.subVector ((v.size() + 1) / 2),\n  true\n)'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<ELEMENT_ITER>
				DESCR='otherwise, print the list as comma-delimited text flow'
				COND='sectionBlock.execSecNone'
				FMT={
					sec.outputStyle='text-par';
					sec.indent.block='true';
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
				}
				TARGET_ET='xs:element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='getVar ("derived-elements").toEnum()'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("QName")',ascending}
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
										COND='output.format.supportsPagination &&\ngetBooleanParam("page.refs") &&\nhyperTargetExists (Array (contextElement.id,  "detail"))'
										FMT={
											ctrl.size.width='159.8';
											text.style='cs3';
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
			</ELEMENT_ITER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								TEXT='All Direct / Indirect Based Elements'
							</LABEL>
							<DATA_CTRL>
								FORMULA='"(" + getVar ("derived-elements").toVector().size() + ")"'
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
	</FOLDER>
	<FOLDER>
		DESCR='All direct/indirect based attributes'
		COND='getBooleanParam("basedAttributes") &&\ncheckElementsByKey ("derived-attributes", contextElement.id)'
		INIT_EXPR='v = findElementsByKey (\n  "derived-attributes", contextElement.id\n).toVector();\n\nv.sortVector (\n  @el,\n  FlexQuery (\n    callStockSection (el.toElement(), "Attribute Location")\n  )\n);\n\nsetVar ("derived-attributes", v);\n'
		<BODY>
			<AREA_SEC>
				FMT={
					sec.outputStyle='table';
					sec.indent.block='true';
					table.cellpadding.both='0';
					table.border.style='none';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.align.vert='Top';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								FMT={
									ctrl.size.width='208.5';
									ctrl.size.height='17.3';
								}
								SS_NAME='Attribute List Column'
								PARAMS_EXPR='v = getVar ("derived-attributes").toVector();\nN = v.size();\n\nArray (\n  v.subVector (0, (N + 1) / 2),\n  N == 1\n)'
							</SS_CALL_CTRL>
							<SS_CALL_CTRL>
								FMT={
									ctrl.size.width='273';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='12';
								}
								SS_NAME='Attribute List Column'
								PARAMS_EXPR='v = getVar ("derived-attributes").toVector();\n\nArray (\n  v.subVector ((v.size() + 1) / 2),\n  true\n)'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								TEXT='All Direct / Indirect Based Attributes'
							</LABEL>
							<DATA_CTRL>
								FORMULA='"(" + getVar ("derived-attributes").toVector().size() + ")"'
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
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		DESCR='params[0]: vector of column elements; \nparams[1]: true if this is the last part of the whole list (to avoid printing comma after last item)'
		FMT={
			sec.outputStyle='pars';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
			par.option.nowrap='true';
			list.style.type='none';
		}
		TARGET_ET='xs:%attribute'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toEnum (stockSection.param)'
		SS_NAME='Attribute List Column'
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='Attribute Location'
							</SS_CALL_CTRL>
							<PANEL>
								COND='output.format.supportsPagination &&\ngetBooleanParam("page.refs") &&\nhyperTargetExists (Array (contextElement.id,  "def"))'
								FMT={
									ctrl.size.width='191.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='nbsp';
												}
											</DELIMITER>
											<LABEL>
												FMT={
													text.style='cs3';
												}
												TEXT='['
											</LABEL>
											<DATA_CTRL>
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.style='cs3';
													text.hlink.fmt='none';
												}
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'"def"';
													}
												</DOC_HLINK>
												DOCFIELD='page-htarget'
											</DATA_CTRL>
											<LABEL>
												FMT={
													text.style='cs3';
												}
												TEXT=']'
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<LABEL>
								COND='! iterator.isLastItem ||\n! stockSection.params[1].toBoolean()'
								TEXT=','
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<AREA_SEC>
		DESCR='case of global attribute'
		MATCHING_ET='xs:%attribute'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
			par.option.nowrap='true';
		}
		SS_NAME='Attribute Location'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<PANEL>
						DESCR='in case of local attribute'
						CONTEXT_ELEMENT_EXPR='findPredecessorByType("xs:%element;xs:complexType;xs:attributeGroup")'
						MATCHING_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType'}
						FMT={
							ctrl.size.width='297';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										MATCHING_ET='xs:%element'
										SS_NAME='Element Location'
									</SS_CALL_CTRL>
									<SS_CALL_CTRL>
										MATCHING_ETS={'xs:attributeGroup';'xs:complexType'}
										SS_NAME='QName'
									</SS_CALL_CTRL>
									<LABEL>
										TEXT='/@'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
					<SS_CALL_CTRL>
						SS_NAME='Attribute Name'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		MATCHING_ET='xs:%attribute'
		FMT={
			par.option.nowrap='true';
		}
		SS_NAME='Attribute Name'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						<DOC_HLINK>
							HKEYS={
								'contextElement.id';
								'"def"';
							}
						</DOC_HLINK>
						<DOC_HLINK>
							HKEYS={
								'contextElement.id';
								'"detail"';
							}
						</DOC_HLINK>
						FORMULA='name = getAttrStringValue("name");\n\nschema = getXMLDocument().findChild ("xs:schema");\nnsURI = schema.getAttrStringValue("targetNamespace");\n\nform = instanceOf("xs:%topLevelAttribute") ? "qualified" :\n{\n  ((form = getAttrStringValue("form")) != "") ? form :\n     schema.getAttrStringValue ("attributeFormDefault");\n};\n\n(form == "qualified") ?\n  QName (nsURI, name, Enum (rootElement, contextElement)) : name;\n'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<ELEMENT_ITER>
		DESCR='params[0]: vector of column elements; \nparams[1]: true if this is the last part of the whole list (to avoid printing comma after last item)'
		FMT={
			sec.outputStyle='pars';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
			par.option.nowrap='true';
			list.style.type='none';
		}
		TARGET_ET='xs:%element'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toEnum (stockSection.param)'
		SS_NAME='Element List Column'
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='Element Location'
							</SS_CALL_CTRL>
							<PANEL>
								COND='output.format.supportsPagination &&\ngetBooleanParam("page.refs") &&\nhyperTargetExists (Array (contextElement.id,  "detail"))'
								FMT={
									ctrl.size.width='191.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='nbsp';
												}
											</DELIMITER>
											<LABEL>
												FMT={
													text.style='cs3';
												}
												TEXT='['
											</LABEL>
											<DATA_CTRL>
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.style='cs3';
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
												FMT={
													text.style='cs3';
												}
												TEXT=']'
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<LABEL>
								COND='! iterator.isLastItem ||\n! stockSection.params[1].toBoolean()'
								TEXT=','
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
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
		SS_NAME='QName'
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
				}
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
CHECKSUM='Bojl5cAVvPHZVcxFV85HZQ'
</DOCFLEX_TEMPLATE>