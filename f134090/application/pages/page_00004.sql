prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0-16'
,p_default_workspace_id=>54766215351348597899
,p_default_application_id=>134090
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SPATACEANOANA'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Vizualizare ruta'
,p_alias=>'VIZUALIZARE-RUTA'
,p_step_title=>'Vizualizare ruta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'OANA.SPATACEAN@STUDENT.UPT.RO'
,p_last_upd_yyyymmddhh24miss=>'20230428122504'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4961231660894925044)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4954377603662824403)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4954261918370824348)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4954640132241824433)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4961232323449925045)
,p_name=>'Vizualizare ruta'
,p_template=>wwv_flow_imp.id(4954365212906824397)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.codTr, r.nrOprire, r.oras, r.ora ',
'FROM trRuta r',
'INNER JOIN trTren t ON r.codTr = t.codTr',
'WHERE t.codTr = 3890'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(4954603516046824415)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4961232706103925047)
,p_query_column_id=>1
,p_column_alias=>'CODTR'
,p_column_display_sequence=>1
,p_column_heading=>'Codtr'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4961233109345925047)
,p_query_column_id=>2
,p_column_alias=>'NROPRIRE'
,p_column_display_sequence=>2
,p_column_heading=>'Nroprire'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4961233513773925047)
,p_query_column_id=>3
,p_column_alias=>'ORAS'
,p_column_display_sequence=>3
,p_column_heading=>'Oras'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4961233977158925047)
,p_query_column_id=>4
,p_column_alias=>'ORA'
,p_column_display_sequence=>4
,p_column_heading=>'Ora'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
