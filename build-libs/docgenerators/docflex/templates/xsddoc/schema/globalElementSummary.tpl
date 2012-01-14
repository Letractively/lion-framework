<DOCFLEX_TEMPLATE VER='1.9'>
CREATED='2004-06-21 01:50:00'
LAST_UPDATE='2007-06-30 06:10:51'
DESIGNER_TOOL='DocFlex SDK 1.x'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='xs:schema'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='include.detail.element.global';
		param.displayName='Global Elements';
		param.type='boolean';
		param.boolean.default='true';
	}
	PARAM={
		param.name='page.column';
		param.displayName='Generate page number column';
		param.type='boolean';
		param.defaultExpr='output.format.supportsPagination && \ngetBooleanParam("include.detail.element.global")';
		param.hidden='true';
	}
	PARAM={
		param.name='fmt.allowNestedTables';
		param.displayName='Allow nested tables';
		param.type='boolean';
		param.boolean.default='true';
	}
</TEMPLATE_PARAMS>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<STYLES>
	CHAR_STYLE={
		style.name='Code';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
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
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Internal Subset';
		style.id='cs4';
		text.font.name='Courier New';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s3';
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
		par.page.keepTogether='true';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Markup';
		style.id='cs5';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s4';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Normal Smaller';
		style.id='cs6';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs7';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs8';
		text.font.size='9';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Summary Heading Font';
		style.id='cs9';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs10';
		text.font.name='Verdana';
		text.font.size='8';
	}
</STYLES>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			sec.outputStyle='table';
			text.style='cs7';
			table.sizing='Relative';
			table.cellpadding.horz='1';
			table.cellpadding.vert='0';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<PANEL>
						FMT={
							content.outputStyle='text-par';
							ctrl.size.width='398.3';
							ctrl.size.height='39.8';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									par.border.bottom.style='solid';
								}
								<CTRLS>
									<LABEL>
										TEXT='XML Schema'
									</LABEL>
									<DATA_CTRL>
										FORMULA='\'"\' + getXMLDocument().getAttrStringValue("xmlName") + \'"\''
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
					<LABEL>
						FMT={
							ctrl.size.width='101.3';
							ctrl.size.height='39.8';
							tcell.align.horz='Right';
							tcell.option.nowrap='true';
						}
						TEXT='Global Element Summary'
					</LABEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<ELEMENT_ITER>
		FMT={
			sec.outputStyle='table';
			table.sizing='Relative';
			table.cellpadding.both='3';
		}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"global-element-summary"';
			}
		</HTARGET>
		TARGET_ET='xs:element'
		SCOPE='simple-location-rules'
		RULES={
			'* -> xs:element';
		}
		SORTING='by-attr'
		SORTING_KEY={lpath='@name',ascending}
		<BODY>
			<AREA_SEC>
				FMT={
					trow.page.keepTogether='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FMT={
									ctrl.size.width='150';
									ctrl.size.height='17.3';
									text.style='cs1';
									text.font.style.bold='true';
								}
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
								FORMULA='QName(\n  rootElement.getAttrStringValue("targetNamespace"), \n  getAttrStringValue("name")\n)'
							</DATA_CTRL>
							<SS_CALL_CTRL>
								FMT={
									ctrl.size.width='316.5';
									ctrl.size.height='17.3';
									tcell.sizing='Relative';
								}
								SS_NAME='Element'
							</SS_CALL_CTRL>
							<DATA_CTRL>
								COND='getBooleanParam("page.column")'
								FMT={
									ctrl.size.width='33';
									ctrl.size.height='17.3';
									ctrl.option.noHLinkFmt='true';
									tcell.align.horz='Center';
									text.style='cs8';
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
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					trow.page.keepTogether='true';
					trow.page.keepWithNext='true';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<LABEL>
								FMT={
									ctrl.size.width='467.3';
									ctrl.size.height='17.3';
									tcell.sizing='Relative';
									text.style='cs9';
								}
								TEXT='Global Element Summary'
							</LABEL>
							<LABEL>
								COND='getBooleanParam("page.column")'
								FMT={
									ctrl.size.width='32.3';
									ctrl.size.height='17.3';
									tcell.align.horz='Center';
									text.style='cs8';
									text.font.style.bold='true';
								}
								TEXT='Page'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		MATCHING_ET='xs:%element'
		SS_NAME='Element'
		<BODY>
			<TEMPLATE_CALL>
				OUTPUT_CHECKER_EXPR='getValuesByLPath(\n  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"\n).isBlank() ? -1 : 1'
				FMT={
					sec.spacing.after='6';
					text.style='cs6';
				}
				TEMPLATE_FILE='../ann/firstSentence.tpl'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("fmt.allowNestedTables")'
				TEMPLATE_FILE='../element/elementProfile.tpl'
				PASSED_PARAMS={
					'nsURI','rootElement.getAttrStringValue("targetNamespace")';
					'showNS','false';
					'showSchema','false';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='! getBooleanParam("fmt.allowNestedTables")'
				TEMPLATE_FILE='../element/elementProfile2.tpl'
				PASSED_PARAMS={
					'nsURI','rootElement.getAttrStringValue("targetNamespace")';
					'showNS','false';
					'showSchema','false';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='HT6zGCAiRuXx8MZZ1P5Cmw'
</DOCFLEX_TEMPLATE>