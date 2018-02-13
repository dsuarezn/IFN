
//////////////////////////////////////////////////////////INDIVIDUOS SOLOS//////////////////////////////////////////////////// 
select 
  co.ID_CONGLOMERADO,
  co.CODIGO_CONGLOMERADO,
  sub.CODIGO_SUBPARCELA,
  ID_INDIVIDUOS,
  ind.SUBP_ID_SUBPARCELA,
  TIPO_INDIVIDUO,
  ind.NUMERO_ID,
  CONDICION,
  AZIMUT,
  DISTANCIA,
  TIPO_FUSTE,
  NUMERO_FUSTE,
  DAP1,
  DAP2,
  EQUIPO1,
  POM,
  ALTURA_FUSTE,
  ALTURA_TOTAL,
  EQUIPO2,
  FORMA_FUSTE,
  DANO,
  PENETRACION,
  NUMERO_PENETRACIONES,
  IND_O_FUSTE,
  ind.OBSERVACION,
  bc.TIPO_BRIGADA,
  bc.VIGENCIA
  FROM IFN_INDIVIDUOS  ind
  join IFN_SUBPARCELAS sub on (sub.id_subparcela = ind.SUBP_ID_SUBPARCELA)
  join ifn_conglomerado co on (co.ID_CONGLOMERADO = sub.CONG_ID_CONGLOMERADO)  
  join ifn_brigada_conglomerado bc on (bc.CONG_ID_CONGLOMERADO = co.ID_CONGLOMERADO and bc.ID_BRIGADA_CONGLOMERADO = ind.IFN_ID_BRIGADA_CONG )
 
 //////////////////////////////////////////////////////////INDIVIDUOS SOLOS//////////////////////////////////////////////////// 


//////////////////////////////////////////////////////////INDIVIDUOS CON COLECCION BOTANICA//////////////////////////////////////////////////// 
select 
  co.ID_CONGLOMERADO,
  co.CODIGO_CONGLOMERADO,
  sub.CODIGO_SUBPARCELA,
  ID_INDIVIDUOS,
  ind.SUBP_ID_SUBPARCELA,
  TIPO_INDIVIDUO,
  ind.NUMERO_ID,
  CONDICION,
  AZIMUT,
  DISTANCIA,
  TIPO_FUSTE,
  NUMERO_FUSTE,
  DAP1,
  DAP2,
  EQUIPO1,
  POM,
  ALTURA_FUSTE,
  ALTURA_TOTAL,
  EQUIPO2,
  FORMA_FUSTE,
  DANO,
  PENETRACION,
  NUMERO_PENETRACIONES,
  IND_O_FUSTE,
  ind.OBSERVACION,
  bc.TIPO_BRIGADA,
  bc.VIGENCIA,
  ID_LABORATORIO_HERBARIO,
  lh.NUMERO_ID,
  FAMILIA,
  GENERO,
  ESPECIE,
  lh.SUPB_ID_SUBPARCELA,
  FAMILIA_DET_1,
  GENERO_DET_1,
  ESPECIE_DET_1,
  AUTOR_DET_1,
  DETERMINADOR_1,
  FECHA_DET_1,
  FAMILIA_DET_2,
  GENERO_DET_2,
  ESPECIE_DET_2,
  AUTOR_DET_2,
  DETERMINADOR_2,
  FECHA_DET_2,
  FAMILIA_NOLISTA,
  GENERO_NOLISTA,
  ESPECIE_NOLISTA,
  FAMILIADET1_NOLISTA,
  GENERODET1_NOLISTA,
  ESPECIEDET1_NOLISTA,
  AUTORDET1_NOLISTA,
  FAMILIADET2_NOLISTA,
  GENERODET2_NOLISTA,
  ESPECIEDET2_NOLISTA,
  AUTORDET2_NOLISTA,
  IFN_PPERMANENTES_PARCELA_ID,
  PLACA_NO
  FROM IFN_INDIVIDUOS  ind
  join IFN_SUBPARCELAS sub on (sub.id_subparcela = ind.SUBP_ID_SUBPARCELA)
  join ifn_conglomerado co on (co.ID_CONGLOMERADO = sub.CONG_ID_CONGLOMERADO)  
  join ifn_brigada_conglomerado bc on (bc.CONG_ID_CONGLOMERADO = co.ID_CONGLOMERADO and bc.ID_BRIGADA_CONGLOMERADO = ind.IFN_ID_BRIGADA_CONG )
  left join IFN_LABORATORIO_HERBARIO lh on (lh.SUPB_ID_SUBPARCELA =  ind.SUBP_ID_SUBPARCELA and lh.NUMERO_ID = ind.NUMERO_ID and lh.IFN_ID_BRIGADA_CONG = ind.IFN_ID_BRIGADA_CONG )
 
 //////////////////////////////////////////////////////////INDIVIDUOS CON COLECCION BOTANICA//////////////////////////////////////////////////// 
  
  
  
  
  
 
 
 
////////////////////////////////////////////////////////////////////////////////SUELOS//////////////////////////////////////////////////// 
 
 select 
  co.ID_CONGLOMERADO,
  co.CODIGO_CONGLOMERADO,
  sub.CODIGO_SUBPARCELA,
  ID_SUELOS,
  SUBP_ID_SUBPARCELA,
  DISTANCIA,
  ORIENTACION,
  COLOR,
  ROCAS,
  RAICES,
  RANGO_FOTOS,
  FERTILIDAD,
  CARBONO,
  DENSIDAD,
  PESO_FRESCO,
  OBSERVACION,
  bc.TIPO_BRIGADA,
  bc.VIGENCIA
  FROM IFN_SUELOS  su
  join IFN_SUBPARCELAS sub on (sub.id_subparcela = su.SUBP_ID_SUBPARCELA)
  join ifn_conglomerado co on (co.ID_CONGLOMERADO = sub.CONG_ID_CONGLOMERADO)  
  join ifn_brigada_conglomerado bc on (su.IFN_ID_BRIGADA_CONG = bc.ID_BRIGADA_CONGLOMERADO)

////////////////////////////////////////////////////////////////////////////////SUELOS//////////////////////////////////////////////////// 
 
////////////////////////////////////////////////////////////////////////////////SUELOS CON LABORATORIOS////////////////////////////////////////////////////
 
 select 
  co.ID_CONGLOMERADO,
  co.CODIGO_CONGLOMERADO,
  sub.CODIGO_SUBPARCELA,
  ID_SUELOS,
  SUBP_ID_SUBPARCELA,
  DISTANCIA,
  ORIENTACION,
  COLOR,
  ROCAS,
  RAICES,
  RANGO_FOTOS,
  FERTILIDAD,
  CARBONO,
  DENSIDAD,
  PESO_FRESCO,
  OBSERVACION,
  ID_LABORATORIO_SUELOS,
  TEXTURA,
  MATERIA_ORGANICA,
  FOSFORO,
  POTASIO,
  PH,
  CALCIO,
  MAGNESIO,
  SODIO,
  ALUMINO_INTERCAMBIABLE,
  CICE,
  CARBONO_ORGANICO,
  PESO_SECO,
  VOLUMEN_CILINDRICO,
  bc.TIPO_BRIGADA,
  bc.VIGENCIA
  FROM IFN_SUELOS  su
   join IFN_SUBPARCELAS sub on (sub.id_subparcela = su.SUBP_ID_SUBPARCELA)
  join IFN_LABORATORIO_SUELOS ls on (ls.SUPB_ID_SUBPARCELA = sub.id_subparcela)--and ls.IFN_ID_BRIGADA_CONG = 
  join ifn_conglomerado co on (co.ID_CONGLOMERADO = sub.CONG_ID_CONGLOMERADO)  
  join ifn_brigada_conglomerado bc on (su.IFN_ID_BRIGADA_CONG = bc.ID_BRIGADA_CONGLOMERADO)
  
 ////////////////////////////////////////////////////////////////////////////////SUELOS CON LABORATORIOS////////////////////////////////////////////////////
 
 
 ////////////////////////////////////////////////////////////////////////////////DETRITOS SOLOS////////////////////////////////////////////////////
 
 SELECT
co.CODIGO_CONGLOMERADO
,dt.TRANSECTO
,dt.SECCION
,dt.PIEZA
,dt.TIPO_DETRITO
,dt.DISTANCIA_SECCION
,dt.DIAMETRO1
,dt.DIAMETRO2
,dt.AZIMUT
,dt.INCLINACION
,dt.PENETRACION
,dt.NUMERO_GOLPES
,dt.PESO_RODAJA
,dt.ESPESOR1
,dt.ESPESOR2
,dt.ESPESOR3
,dt.ESPESOR4
,dt.PESO_FRESCO
FROM IFN.IFN_DETRITOS dt
join ifn_brigada_conglomerado bc on (dt.IFN_ID_BRIGADA_CONG = bc.ID_BRIGADA_CONGLOMERADO)
join ifn_conglomerado co on (co.ID_CONGLOMERADO = bc.CONG_ID_CONGLOMERADO)  

 ////////////////////////////////////////////////////////////////////////////////DETRITOS SOLOS////////////////////////////////////////////////////
 
 
 //////////////////////////////////////////////////////////////////DETRITOS Y LABORATORIO DETRITOS|////////////////////////////////////////////////////
 SELECT
co.CODIGO_CONGLOMERADO
,dt.TRANSECTO
,dt.SECCION
,dt.PIEZA
,dt.TIPO_DETRITO
,dt.DISTANCIA_SECCION
,dt.DIAMETRO1
,dt.DIAMETRO2
,dt.AZIMUT
,dt.INCLINACION
,dt.PENETRACION
,dt.NUMERO_GOLPES
,dt.PESO_RODAJA
,dt.ESPESOR1
,dt.ESPESOR2
,dt.ESPESOR3
,dt.ESPESOR4
,dt.PESO_FRESCO
,ld.NUMERO_PIEZA
,ld.PESO_SECO
FROM IFN.IFN_DETRITOS dt
join ifn_brigada_conglomerado bc on (dt.IFN_ID_BRIGADA_CONG = bc.ID_BRIGADA_CONGLOMERADO)
join ifn_conglomerado co on (co.ID_CONGLOMERADO = bc.CONG_ID_CONGLOMERADO)  
JOIN IFN_LABORATORIO_DETRITOS ld on (ld.IFN_DETRITOS_ID = dt.ID_DETRITO)
 
 //////////////////////////////////////////////////////////////////DETRITOS Y LABORATORIO DETRITOS|////////////////////////////////////////////////////