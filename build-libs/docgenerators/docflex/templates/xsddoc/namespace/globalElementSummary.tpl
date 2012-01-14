<DOCFLEX_TEMPLATE VER='1.9'>
CREATED='2004-06-21 01:50:00'
LAST_UPDATE='2007-06-30 06:10:51'
DESIGNER_TOOL='DocFlex SDK 1.x'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='#DOCUMENTS'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='nsURI';
		param.displayName='Namespace URI';
		param.type='string';
	}
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
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s1';
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
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Normal Smaller';
		style.id='cs4';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs5';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs6';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Summary Heading Font';
		style.id='cs7';
		text.font.size='12';
		text.font.style.bold='true';
	}
</STYLES>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			sec.outputStyle='table';
			text.style='cs5';
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
										TEXT='Namespace'
									</LABEL>
									<DATA_CTRL>
										FORMULA='(ns = getStringParam("nsURI")) != "" ? \'"\' + ns + \'"\' : "{global namespace}"'
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
				'getStringParam("nsURI")';
				'"global-element-summary"';
			}
		</HTARGET>
		TARGET_ET='xs:element'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> #DOCUMENT/xs:schema[getAttrStringValue("targetNamespace") == getStringParam("nsURI")]/xs:element';
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
								FORMULA='QName (getStringParam("nsURI"), getAttrStringValue("name"))'
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
									text.style='cs6';
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
									text.style='cs7';
								}
								TEXT='Global Element Summary'
							</LABEL>
							<LABEL>
								COND='getBooleanParam("page.column")'
								FMT={
									ctrl.size.width='32.3';
									ctrl.size.height='17.3';
									tcell.align.horz='Center';
									text.style='cs6';
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
					text.style='cs4';
				}
				TEMPLATE_FILE='../ann/firstSentence.tpl'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("fmt.allowNestedTables")'
				TEMPLATE_FILE='../element/elementProfile.tpl'
				PASSED_PARAMS={
					'showNS','false';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='! getBooleanParam("fmt.allowNestedTables")'
				TEMPLATE_FILE='../element/elementProfile2.tpl'
				PASSED_PARAMS={
					'showNS','false';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='sUR5oVacFuZi2qnZ5Kp4jw'
</DOCFLEX_TEMPLATE>