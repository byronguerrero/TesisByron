PGDMP         :                s            Tesis    9.4.1    9.4.1 �    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            	           1262    17673    Tesis    DATABASE     �   CREATE DATABASE "Tesis" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE "Tesis";
             byron    false                        2615    17674 	   pribantsa    SCHEMA        CREATE SCHEMA pribantsa;
    DROP SCHEMA pribantsa;
             postgres    false            	           0    0 	   pribantsa    ACL     �   REVOKE ALL ON SCHEMA pribantsa FROM PUBLIC;
REVOKE ALL ON SCHEMA pribantsa FROM postgres;
GRANT ALL ON SCHEMA pribantsa TO postgres;
GRANT ALL ON SCHEMA pribantsa TO PUBLIC;
                  postgres    false    7                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11855    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    225            �            1259    17675    bono    TABLE     �   CREATE TABLE bono (
    "idBono" integer NOT NULL,
    fecha date NOT NULL,
    "idTipoBono" integer NOT NULL,
    "idEmpleado" integer NOT NULL
);
    DROP TABLE pribantsa.bono;
    	   pribantsa         postgres    false    7            �            1259    17678    bono_idBono_seq    SEQUENCE     s   CREATE SEQUENCE "bono_idBono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE pribantsa."bono_idBono_seq";
    	   pribantsa       postgres    false    173    7            	           0    0    bono_idBono_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "bono_idBono_seq" OWNED BY bono."idBono";
         	   pribantsa       postgres    false    174            �            1259    17680    capacitacion    TABLE     �   CREATE TABLE capacitacion (
    "idCapacitacion" integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    lugar text NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    "idEmpleado" integer NOT NULL
);
 #   DROP TABLE pribantsa.capacitacion;
    	   pribantsa         postgres    false    7            �            1259    17686    capacitacion_idCapacitacion_seq    SEQUENCE     �   CREATE SEQUENCE "capacitacion_idCapacitacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE pribantsa."capacitacion_idCapacitacion_seq";
    	   pribantsa       postgres    false    7    175            	           0    0    capacitacion_idCapacitacion_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "capacitacion_idCapacitacion_seq" OWNED BY capacitacion."idCapacitacion";
         	   pribantsa       postgres    false    176            �            1259    17688    contrato    TABLE     �   CREATE TABLE contrato (
    "idContrato" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idTipoContrato" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL
);
    DROP TABLE pribantsa.contrato;
    	   pribantsa         postgres    false    7            �            1259    17691    contrato_idContrato_seq    SEQUENCE     {   CREATE SEQUENCE "contrato_idContrato_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE pribantsa."contrato_idContrato_seq";
    	   pribantsa       postgres    false    177    7            	           0    0    contrato_idContrato_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "contrato_idContrato_seq" OWNED BY contrato."idContrato";
         	   pribantsa       postgres    false    178            �            1259    17693    correo    TABLE     v   CREATE TABLE correo (
    "idCorreo" integer NOT NULL,
    correo text NOT NULL,
    "idEmpleado" integer NOT NULL
);
    DROP TABLE pribantsa.correo;
    	   pribantsa         postgres    false    7            �            1259    17699    correo_idCorreo_seq    SEQUENCE     w   CREATE SEQUENCE "correo_idCorreo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE pribantsa."correo_idCorreo_seq";
    	   pribantsa       postgres    false    179    7            	           0    0    correo_idCorreo_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "correo_idCorreo_seq" OWNED BY correo."idCorreo";
         	   pribantsa       postgres    false    180            �            1259    17701    criterio    TABLE     �   CREATE TABLE criterio (
    "idCriterio" integer NOT NULL,
    descripcion text NOT NULL,
    peso integer NOT NULL,
    "idPuesto" integer NOT NULL
);
    DROP TABLE pribantsa.criterio;
    	   pribantsa         postgres    false    7            �            1259    17707    criterio_idCriterio_seq    SEQUENCE     {   CREATE SEQUENCE "criterio_idCriterio_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE pribantsa."criterio_idCriterio_seq";
    	   pribantsa       postgres    false    181    7            	           0    0    criterio_idCriterio_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "criterio_idCriterio_seq" OWNED BY criterio."idCriterio";
         	   pribantsa       postgres    false    182            �            1259    17709    departamento    TABLE     }   CREATE TABLE departamento (
    id_departamento integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL
);
 #   DROP TABLE pribantsa.departamento;
    	   pribantsa         postgres    false    7            	           0    0    departamento    ACL     �   REVOKE ALL ON TABLE departamento FROM PUBLIC;
REVOKE ALL ON TABLE departamento FROM postgres;
GRANT ALL ON TABLE departamento TO postgres;
GRANT ALL ON TABLE departamento TO byron;
         	   pribantsa       postgres    false    183            �            1259    17715    departamento_idepartamento_seq    SEQUENCE     �   CREATE SEQUENCE departamento_idepartamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE pribantsa.departamento_idepartamento_seq;
    	   pribantsa       postgres    false    7    183            	           0    0    departamento_idepartamento_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE departamento_idepartamento_seq OWNED BY departamento.id_departamento;
         	   pribantsa       postgres    false    184            	           0    0    departamento_idepartamento_seq    ACL       REVOKE ALL ON SEQUENCE departamento_idepartamento_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE departamento_idepartamento_seq FROM postgres;
GRANT ALL ON SEQUENCE departamento_idepartamento_seq TO postgres;
GRANT USAGE ON SEQUENCE departamento_idepartamento_seq TO byron;
         	   pribantsa       postgres    false    184            �            1259    17717 	   descuento    TABLE     �   CREATE TABLE descuento (
    "idDescuento" integer NOT NULL,
    fecha date NOT NULL,
    "idTipoDescuento" integer NOT NULL,
    "idEmpleado" integer NOT NULL
);
     DROP TABLE pribantsa.descuento;
    	   pribantsa         postgres    false    7            �            1259    17720    descuento_idDescuento_seq    SEQUENCE     }   CREATE SEQUENCE "descuento_idDescuento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE pribantsa."descuento_idDescuento_seq";
    	   pribantsa       postgres    false    7    185            	           0    0    descuento_idDescuento_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "descuento_idDescuento_seq" OWNED BY descuento."idDescuento";
         	   pribantsa       postgres    false    186            �            1259    17722 	   educacion    TABLE     �   CREATE TABLE educacion (
    id_educacion integer NOT NULL,
    titulo text NOT NULL,
    fecha date NOT NULL,
    id_empleado_estudios integer,
    lugar text,
    institucion text,
    idx text,
    nivel text
);
     DROP TABLE pribantsa.educacion;
    	   pribantsa         postgres    false    7            	           0    0 	   educacion    ACL     �   REVOKE ALL ON TABLE educacion FROM PUBLIC;
REVOKE ALL ON TABLE educacion FROM postgres;
GRANT ALL ON TABLE educacion TO postgres;
GRANT ALL ON TABLE educacion TO byron;
         	   pribantsa       postgres    false    187            �            1259    17728    educacion_educacion_seqid    SEQUENCE     {   CREATE SEQUENCE educacion_educacion_seqid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE pribantsa.educacion_educacion_seqid;
    	   pribantsa       postgres    false    7    187            	           0    0    educacion_educacion_seqid    SEQUENCE OWNED BY     J   ALTER SEQUENCE educacion_educacion_seqid OWNED BY educacion.id_educacion;
         	   pribantsa       postgres    false    188            	           0    0    educacion_educacion_seqid    ACL     �   REVOKE ALL ON SEQUENCE educacion_educacion_seqid FROM PUBLIC;
REVOKE ALL ON SEQUENCE educacion_educacion_seqid FROM postgres;
GRANT ALL ON SEQUENCE educacion_educacion_seqid TO postgres;
GRANT USAGE ON SEQUENCE educacion_educacion_seqid TO byron;
         	   pribantsa       postgres    false    188            �            1259    17730    empleado    TABLE     �  CREATE TABLE empleado (
    empleado_id integer NOT NULL,
    dui text NOT NULL,
    isss text NOT NULL,
    afp text NOT NULL,
    sexo text,
    id_departamento integer NOT NULL,
    nit text NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    cuenta text NOT NULL,
    salario double precision NOT NULL,
    id_puestotrabajo integer NOT NULL,
    edad integer,
    estado_civil text,
    idx integer
);
    DROP TABLE pribantsa.empleado;
    	   pribantsa         postgres    false    7            	           0    0    empleado    ACL     �   REVOKE ALL ON TABLE empleado FROM PUBLIC;
REVOKE ALL ON TABLE empleado FROM postgres;
GRANT ALL ON TABLE empleado TO postgres;
GRANT ALL ON TABLE empleado TO byron;
         	   pribantsa       postgres    false    189            �            1259    17736    empleado_empleado_idseq    SEQUENCE     y   CREATE SEQUENCE empleado_empleado_idseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE pribantsa.empleado_empleado_idseq;
    	   pribantsa       postgres    false    189    7             	           0    0    empleado_empleado_idseq    SEQUENCE OWNED BY     F   ALTER SEQUENCE empleado_empleado_idseq OWNED BY empleado.empleado_id;
         	   pribantsa       postgres    false    190            !	           0    0    empleado_empleado_idseq    ACL     �   REVOKE ALL ON SEQUENCE empleado_empleado_idseq FROM PUBLIC;
REVOKE ALL ON SEQUENCE empleado_empleado_idseq FROM postgres;
GRANT ALL ON SEQUENCE empleado_empleado_idseq TO postgres;
GRANT USAGE ON SEQUENCE empleado_empleado_idseq TO byron;
         	   pribantsa       postgres    false    190            �            1259    17738 
   evaluacion    TABLE     �   CREATE TABLE evaluacion (
    "idEvaluacion" integer NOT NULL,
    puntaje double precision NOT NULL,
    fecha date NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idCriterio" integer NOT NULL
);
 !   DROP TABLE pribantsa.evaluacion;
    	   pribantsa         postgres    false    7            �            1259    17741    evaluacion_idEvaluacion_seq    SEQUENCE        CREATE SEQUENCE "evaluacion_idEvaluacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE pribantsa."evaluacion_idEvaluacion_seq";
    	   pribantsa       postgres    false    191    7            "	           0    0    evaluacion_idEvaluacion_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "evaluacion_idEvaluacion_seq" OWNED BY evaluacion."idEvaluacion";
         	   pribantsa       postgres    false    192            �            1259    18085    exp_laboral    TABLE     �   CREATE TABLE exp_laboral (
    lugar text,
    tiempo integer,
    cargo text,
    id_explaboral bigint NOT NULL,
    "idEmpleado" integer,
    idx integer
);
 "   DROP TABLE pribantsa.exp_laboral;
    	   pribantsa         postgres    false    7            #	           0    0    exp_laboral    ACL     �   REVOKE ALL ON TABLE exp_laboral FROM PUBLIC;
REVOKE ALL ON TABLE exp_laboral FROM postgres;
GRANT ALL ON TABLE exp_laboral TO postgres;
GRANT ALL ON TABLE exp_laboral TO byron;
         	   pribantsa       postgres    false    222            �            1259    18083    exp_laboral_id_explaboral_seq    SEQUENCE        CREATE SEQUENCE exp_laboral_id_explaboral_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE pribantsa.exp_laboral_id_explaboral_seq;
    	   pribantsa       postgres    false    222    7            $	           0    0    exp_laboral_id_explaboral_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE exp_laboral_id_explaboral_seq OWNED BY exp_laboral.id_explaboral;
         	   pribantsa       postgres    false    221            %	           0    0    exp_laboral_id_explaboral_seq    ACL       REVOKE ALL ON SEQUENCE exp_laboral_id_explaboral_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE exp_laboral_id_explaboral_seq FROM postgres;
GRANT ALL ON SEQUENCE exp_laboral_id_explaboral_seq TO postgres;
GRANT USAGE ON SEQUENCE exp_laboral_id_explaboral_seq TO byron;
         	   pribantsa       postgres    false    221            �            1259    18134    objdepartamento    TABLE     �   CREATE TABLE objdepartamento (
    tipo text,
    descripcion text,
    id_objetivodep bigint NOT NULL,
    id_departamento integer,
    idx integer
);
 &   DROP TABLE pribantsa.objdepartamento;
    	   pribantsa         postgres    false    7            &	           0    0    objdepartamento    ACL     �   REVOKE ALL ON TABLE objdepartamento FROM PUBLIC;
REVOKE ALL ON TABLE objdepartamento FROM postgres;
GRANT ALL ON TABLE objdepartamento TO postgres;
GRANT ALL ON TABLE objdepartamento TO byron;
         	   pribantsa       postgres    false    223            �            1259    18140 #   obj_departamento_id_objetivodep_seq    SEQUENCE     �   CREATE SEQUENCE obj_departamento_id_objetivodep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE pribantsa.obj_departamento_id_objetivodep_seq;
    	   pribantsa       postgres    false    7    223            '	           0    0 #   obj_departamento_id_objetivodep_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE obj_departamento_id_objetivodep_seq OWNED BY objdepartamento.id_objetivodep;
         	   pribantsa       postgres    false    224            (	           0    0 #   obj_departamento_id_objetivodep_seq    ACL       REVOKE ALL ON SEQUENCE obj_departamento_id_objetivodep_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE obj_departamento_id_objetivodep_seq FROM postgres;
GRANT ALL ON SEQUENCE obj_departamento_id_objetivodep_seq TO postgres;
GRANT USAGE ON SEQUENCE obj_departamento_id_objetivodep_seq TO byron;
         	   pribantsa       postgres    false    224            �            1259    17743    objetivo    TABLE     �   CREATE TABLE objetivo (
    id_objetivo integer NOT NULL,
    funcion text NOT NULL,
    idpuesto_trabajo integer,
    idx integer
);
    DROP TABLE pribantsa.objetivo;
    	   pribantsa         postgres    false    7            )	           0    0    objetivo    ACL     �   REVOKE ALL ON TABLE objetivo FROM PUBLIC;
REVOKE ALL ON TABLE objetivo FROM postgres;
GRANT ALL ON TABLE objetivo TO postgres;
GRANT ALL ON TABLE objetivo TO byron;
         	   pribantsa       postgres    false    193            �            1259    17749    objetivo_id_objetivo_seq    SEQUENCE     z   CREATE SEQUENCE objetivo_id_objetivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE pribantsa.objetivo_id_objetivo_seq;
    	   pribantsa       postgres    false    7    193            *	           0    0    objetivo_id_objetivo_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE objetivo_id_objetivo_seq OWNED BY objetivo.id_objetivo;
         	   pribantsa       postgres    false    194            +	           0    0    objetivo_id_objetivo_seq    ACL     �   REVOKE ALL ON SEQUENCE objetivo_id_objetivo_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE objetivo_id_objetivo_seq FROM postgres;
GRANT ALL ON SEQUENCE objetivo_id_objetivo_seq TO postgres;
GRANT USAGE ON SEQUENCE objetivo_id_objetivo_seq TO byron;
         	   pribantsa       postgres    false    194            �            1259    17751    permiso    TABLE       CREATE TABLE permiso (
    "idPermiso" integer NOT NULL,
    remunerado boolean NOT NULL,
    inicio timestamp without time zone NOT NULL,
    fin timestamp without time zone NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idTipoPermiso" integer NOT NULL
);
    DROP TABLE pribantsa.permiso;
    	   pribantsa         postgres    false    7            ,	           0    0    COLUMN permiso.remunerado    COMMENT     �   COMMENT ON COLUMN permiso.remunerado IS 'Si el permiso es remunerado se marcará este campo como "verdadero", en caso no sea remunerado se marcará como "falso".';
         	   pribantsa       postgres    false    195            �            1259    17754    permiso_idPermiso_seq    SEQUENCE     y   CREATE SEQUENCE "permiso_idPermiso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE pribantsa."permiso_idPermiso_seq";
    	   pribantsa       postgres    false    195    7            -	           0    0    permiso_idPermiso_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "permiso_idPermiso_seq" OWNED BY permiso."idPermiso";
         	   pribantsa       postgres    false    196            �            1259    17756    planilla    TABLE     �   CREATE TABLE planilla (
    "idPlanilla" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    "idEmpleado" integer NOT NULL
);
    DROP TABLE pribantsa.planilla;
    	   pribantsa         postgres    false    7            �            1259    17759    planilla_idPlanilla_seq    SEQUENCE     {   CREATE SEQUENCE "planilla_idPlanilla_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE pribantsa."planilla_idPlanilla_seq";
    	   pribantsa       postgres    false    7    197            .	           0    0    planilla_idPlanilla_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "planilla_idPlanilla_seq" OWNED BY planilla."idPlanilla";
         	   pribantsa       postgres    false    198            �            1259    17761    puesto_historico    TABLE     �   CREATE TABLE puesto_historico (
    "idHistoricoPuesto" integer NOT NULL,
    "idPuesto" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date
);
 '   DROP TABLE pribantsa.puesto_historico;
    	   pribantsa         postgres    false    7            �            1259    17764 &   puesto_historico_idHistoricoPuesto_seq    SEQUENCE     �   CREATE SEQUENCE "puesto_historico_idHistoricoPuesto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE pribantsa."puesto_historico_idHistoricoPuesto_seq";
    	   pribantsa       postgres    false    7    199            /	           0    0 &   puesto_historico_idHistoricoPuesto_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "puesto_historico_idHistoricoPuesto_seq" OWNED BY puesto_historico."idHistoricoPuesto";
         	   pribantsa       postgres    false    200            �            1259    17766    puesto_trabajo    TABLE     �   CREATE TABLE puesto_trabajo (
    id_puesto_trabajo integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    salario_max double precision NOT NULL,
    salario_min double precision NOT NULL
);
 %   DROP TABLE pribantsa.puesto_trabajo;
    	   pribantsa         postgres    false    7            0	           0    0    puesto_trabajo    ACL     �   REVOKE ALL ON TABLE puesto_trabajo FROM PUBLIC;
REVOKE ALL ON TABLE puesto_trabajo FROM postgres;
GRANT ALL ON TABLE puesto_trabajo TO postgres;
GRANT ALL ON TABLE puesto_trabajo TO byron;
         	   pribantsa       postgres    false    201            �            1259    17772 "   puesto_trabajo_idpuestotrabajo_seq    SEQUENCE     �   CREATE SEQUENCE puesto_trabajo_idpuestotrabajo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE pribantsa.puesto_trabajo_idpuestotrabajo_seq;
    	   pribantsa       postgres    false    201    7            1	           0    0 "   puesto_trabajo_idpuestotrabajo_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE puesto_trabajo_idpuestotrabajo_seq OWNED BY puesto_trabajo.id_puesto_trabajo;
         	   pribantsa       postgres    false    202            2	           0    0 "   puesto_trabajo_idpuestotrabajo_seq    ACL       REVOKE ALL ON SEQUENCE puesto_trabajo_idpuestotrabajo_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE puesto_trabajo_idpuestotrabajo_seq FROM postgres;
GRANT ALL ON SEQUENCE puesto_trabajo_idpuestotrabajo_seq TO postgres;
GRANT USAGE ON SEQUENCE puesto_trabajo_idpuestotrabajo_seq TO byron;
         	   pribantsa       postgres    false    202            �            1259    17774    reconocimiento    TABLE     �   CREATE TABLE reconocimiento (
    "idReconocimiento" integer NOT NULL,
    descripcion text NOT NULL,
    "idEmpleado" integer NOT NULL
);
 %   DROP TABLE pribantsa.reconocimiento;
    	   pribantsa         postgres    false    7            �            1259    17780 #   reconocimiento_idReconocimiento_seq    SEQUENCE     �   CREATE SEQUENCE "reconocimiento_idReconocimiento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE pribantsa."reconocimiento_idReconocimiento_seq";
    	   pribantsa       postgres    false    203    7            3	           0    0 #   reconocimiento_idReconocimiento_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "reconocimiento_idReconocimiento_seq" OWNED BY reconocimiento."idReconocimiento";
         	   pribantsa       postgres    false    204            �            1259    17782    sancion    TABLE     �   CREATE TABLE sancion (
    "idSancion" integer NOT NULL,
    gravedad integer NOT NULL,
    descripcion text NOT NULL,
    fecha date NOT NULL,
    "idEmpleado" integer NOT NULL
);
    DROP TABLE pribantsa.sancion;
    	   pribantsa         postgres    false    7            �            1259    17788    sancion_idSancion_seq    SEQUENCE     y   CREATE SEQUENCE "sancion_idSancion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE pribantsa."sancion_idSancion_seq";
    	   pribantsa       postgres    false    205    7            4	           0    0    sancion_idSancion_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "sancion_idSancion_seq" OWNED BY sancion."idSancion";
         	   pribantsa       postgres    false    206            �            1259    17790    telefono    TABLE     |   CREATE TABLE telefono (
    "idTelefono" integer NOT NULL,
    telefono text NOT NULL,
    "idEmpleado" integer NOT NULL
);
    DROP TABLE pribantsa.telefono;
    	   pribantsa         postgres    false    7            �            1259    17796    telefono_idTelefono_seq    SEQUENCE     {   CREATE SEQUENCE "telefono_idTelefono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE pribantsa."telefono_idTelefono_seq";
    	   pribantsa       postgres    false    207    7            5	           0    0    telefono_idTelefono_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "telefono_idTelefono_seq" OWNED BY telefono."idTelefono";
         	   pribantsa       postgres    false    208            �            1259    17798 	   tipo_bono    TABLE     �   CREATE TABLE tipo_bono (
    "idTipoBono" integer NOT NULL,
    "idPuesto" integer NOT NULL,
    porcentaje double precision NOT NULL
);
     DROP TABLE pribantsa.tipo_bono;
    	   pribantsa         postgres    false    7            �            1259    17801    tipo_bono_idTipoBono_seq    SEQUENCE     |   CREATE SEQUENCE "tipo_bono_idTipoBono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE pribantsa."tipo_bono_idTipoBono_seq";
    	   pribantsa       postgres    false    7    209            6	           0    0    tipo_bono_idTipoBono_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "tipo_bono_idTipoBono_seq" OWNED BY tipo_bono."idTipoBono";
         	   pribantsa       postgres    false    210            �            1259    17803    tipo_contrato    TABLE     e   CREATE TABLE tipo_contrato (
    "idTipoContrato" integer NOT NULL,
    descripcion text NOT NULL
);
 $   DROP TABLE pribantsa.tipo_contrato;
    	   pribantsa         postgres    false    7            �            1259    17809     tipo_contrato_idTipoContrato_seq    SEQUENCE     �   CREATE SEQUENCE "tipo_contrato_idTipoContrato_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE pribantsa."tipo_contrato_idTipoContrato_seq";
    	   pribantsa       postgres    false    7    211            7	           0    0     tipo_contrato_idTipoContrato_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "tipo_contrato_idTipoContrato_seq" OWNED BY tipo_contrato."idTipoContrato";
         	   pribantsa       postgres    false    212            �            1259    17811    tipo_descuento    TABLE     �   CREATE TABLE tipo_descuento (
    "idTipoDescuento" integer NOT NULL,
    descripcion text NOT NULL,
    porcentaje double precision NOT NULL
);
 %   DROP TABLE pribantsa.tipo_descuento;
    	   pribantsa         postgres    false    7            �            1259    17817 "   tipo_descuento_idTipoDescuento_seq    SEQUENCE     �   CREATE SEQUENCE "tipo_descuento_idTipoDescuento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE pribantsa."tipo_descuento_idTipoDescuento_seq";
    	   pribantsa       postgres    false    213    7            8	           0    0 "   tipo_descuento_idTipoDescuento_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "tipo_descuento_idTipoDescuento_seq" OWNED BY tipo_descuento."idTipoDescuento";
         	   pribantsa       postgres    false    214            �            1259    17819    tipo_permiso    TABLE     c   CREATE TABLE tipo_permiso (
    "idTipoPermiso" integer NOT NULL,
    descripcion text NOT NULL
);
 #   DROP TABLE pribantsa.tipo_permiso;
    	   pribantsa         postgres    false    7            �            1259    17825    tipo_permiso_idTipoPermiso_seq    SEQUENCE     �   CREATE SEQUENCE "tipo_permiso_idTipoPermiso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE pribantsa."tipo_permiso_idTipoPermiso_seq";
    	   pribantsa       postgres    false    215    7            9	           0    0    tipo_permiso_idTipoPermiso_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "tipo_permiso_idTipoPermiso_seq" OWNED BY tipo_permiso."idTipoPermiso";
         	   pribantsa       postgres    false    216            �            1259    17827    transaccion    TABLE     �   CREATE TABLE transaccion (
    "idTransaccion" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    credito_debito boolean NOT NULL,
    monto double precision NOT NULL,
    fecha timestamp without time zone NOT NULL
);
 "   DROP TABLE pribantsa.transaccion;
    	   pribantsa         postgres    false    7            �            1259    17830    transaccion_idTransaccion_seq    SEQUENCE     �   CREATE SEQUENCE "transaccion_idTransaccion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE pribantsa."transaccion_idTransaccion_seq";
    	   pribantsa       postgres    false    217    7            :	           0    0    transaccion_idTransaccion_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "transaccion_idTransaccion_seq" OWNED BY transaccion."idTransaccion";
         	   pribantsa       postgres    false    218            �            1259    17832    vacacion    TABLE     �   CREATE TABLE vacacion (
    "idVacacion" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date,
    "idEmpleado" integer NOT NULL
);
    DROP TABLE pribantsa.vacacion;
    	   pribantsa         postgres    false    7            �            1259    17835    vacacion_idVacacion_seq    SEQUENCE     {   CREATE SEQUENCE "vacacion_idVacacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE pribantsa."vacacion_idVacacion_seq";
    	   pribantsa       postgres    false    7    219            ;	           0    0    vacacion_idVacacion_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "vacacion_idVacacion_seq" OWNED BY vacacion."idVacacion";
         	   pribantsa       postgres    false    220                        2604    18059    idBono    DEFAULT     `   ALTER TABLE ONLY bono ALTER COLUMN "idBono" SET DEFAULT nextval('"bono_idBono_seq"'::regclass);
 ?   ALTER TABLE pribantsa.bono ALTER COLUMN "idBono" DROP DEFAULT;
    	   pribantsa       postgres    false    174    173                       2604    18060    idCapacitacion    DEFAULT     �   ALTER TABLE ONLY capacitacion ALTER COLUMN "idCapacitacion" SET DEFAULT nextval('"capacitacion_idCapacitacion_seq"'::regclass);
 O   ALTER TABLE pribantsa.capacitacion ALTER COLUMN "idCapacitacion" DROP DEFAULT;
    	   pribantsa       postgres    false    176    175                       2604    18061 
   idContrato    DEFAULT     p   ALTER TABLE ONLY contrato ALTER COLUMN "idContrato" SET DEFAULT nextval('"contrato_idContrato_seq"'::regclass);
 G   ALTER TABLE pribantsa.contrato ALTER COLUMN "idContrato" DROP DEFAULT;
    	   pribantsa       postgres    false    178    177                       2604    18062    idCorreo    DEFAULT     h   ALTER TABLE ONLY correo ALTER COLUMN "idCorreo" SET DEFAULT nextval('"correo_idCorreo_seq"'::regclass);
 C   ALTER TABLE pribantsa.correo ALTER COLUMN "idCorreo" DROP DEFAULT;
    	   pribantsa       postgres    false    180    179                       2604    18063 
   idCriterio    DEFAULT     p   ALTER TABLE ONLY criterio ALTER COLUMN "idCriterio" SET DEFAULT nextval('"criterio_idCriterio_seq"'::regclass);
 G   ALTER TABLE pribantsa.criterio ALTER COLUMN "idCriterio" DROP DEFAULT;
    	   pribantsa       postgres    false    182    181                       2604    18064    id_departamento    DEFAULT     |   ALTER TABLE ONLY departamento ALTER COLUMN id_departamento SET DEFAULT nextval('departamento_idepartamento_seq'::regclass);
 N   ALTER TABLE pribantsa.departamento ALTER COLUMN id_departamento DROP DEFAULT;
    	   pribantsa       postgres    false    184    183                       2604    18065    idDescuento    DEFAULT     t   ALTER TABLE ONLY descuento ALTER COLUMN "idDescuento" SET DEFAULT nextval('"descuento_idDescuento_seq"'::regclass);
 I   ALTER TABLE pribantsa.descuento ALTER COLUMN "idDescuento" DROP DEFAULT;
    	   pribantsa       postgres    false    186    185                       2604    18066    id_educacion    DEFAULT     q   ALTER TABLE ONLY educacion ALTER COLUMN id_educacion SET DEFAULT nextval('educacion_educacion_seqid'::regclass);
 H   ALTER TABLE pribantsa.educacion ALTER COLUMN id_educacion DROP DEFAULT;
    	   pribantsa       postgres    false    188    187                       2604    18067    empleado_id    DEFAULT     m   ALTER TABLE ONLY empleado ALTER COLUMN empleado_id SET DEFAULT nextval('empleado_empleado_idseq'::regclass);
 F   ALTER TABLE pribantsa.empleado ALTER COLUMN empleado_id DROP DEFAULT;
    	   pribantsa       postgres    false    190    189            	           2604    18068    idEvaluacion    DEFAULT     x   ALTER TABLE ONLY evaluacion ALTER COLUMN "idEvaluacion" SET DEFAULT nextval('"evaluacion_idEvaluacion_seq"'::regclass);
 K   ALTER TABLE pribantsa.evaluacion ALTER COLUMN "idEvaluacion" DROP DEFAULT;
    	   pribantsa       postgres    false    192    191                       2604    18088    id_explaboral    DEFAULT     x   ALTER TABLE ONLY exp_laboral ALTER COLUMN id_explaboral SET DEFAULT nextval('exp_laboral_id_explaboral_seq'::regclass);
 K   ALTER TABLE pribantsa.exp_laboral ALTER COLUMN id_explaboral DROP DEFAULT;
    	   pribantsa       postgres    false    222    221    222                       2604    18142    id_objetivodep    DEFAULT     �   ALTER TABLE ONLY objdepartamento ALTER COLUMN id_objetivodep SET DEFAULT nextval('obj_departamento_id_objetivodep_seq'::regclass);
 P   ALTER TABLE pribantsa.objdepartamento ALTER COLUMN id_objetivodep DROP DEFAULT;
    	   pribantsa       postgres    false    224    223            
           2604    18069    id_objetivo    DEFAULT     n   ALTER TABLE ONLY objetivo ALTER COLUMN id_objetivo SET DEFAULT nextval('objetivo_id_objetivo_seq'::regclass);
 F   ALTER TABLE pribantsa.objetivo ALTER COLUMN id_objetivo DROP DEFAULT;
    	   pribantsa       postgres    false    194    193                       2604    18070 	   idPermiso    DEFAULT     l   ALTER TABLE ONLY permiso ALTER COLUMN "idPermiso" SET DEFAULT nextval('"permiso_idPermiso_seq"'::regclass);
 E   ALTER TABLE pribantsa.permiso ALTER COLUMN "idPermiso" DROP DEFAULT;
    	   pribantsa       postgres    false    196    195                       2604    18071 
   idPlanilla    DEFAULT     p   ALTER TABLE ONLY planilla ALTER COLUMN "idPlanilla" SET DEFAULT nextval('"planilla_idPlanilla_seq"'::regclass);
 G   ALTER TABLE pribantsa.planilla ALTER COLUMN "idPlanilla" DROP DEFAULT;
    	   pribantsa       postgres    false    198    197                       2604    18072    idHistoricoPuesto    DEFAULT     �   ALTER TABLE ONLY puesto_historico ALTER COLUMN "idHistoricoPuesto" SET DEFAULT nextval('"puesto_historico_idHistoricoPuesto_seq"'::regclass);
 V   ALTER TABLE pribantsa.puesto_historico ALTER COLUMN "idHistoricoPuesto" DROP DEFAULT;
    	   pribantsa       postgres    false    200    199                       2604    18073    id_puesto_trabajo    DEFAULT     �   ALTER TABLE ONLY puesto_trabajo ALTER COLUMN id_puesto_trabajo SET DEFAULT nextval('puesto_trabajo_idpuestotrabajo_seq'::regclass);
 R   ALTER TABLE pribantsa.puesto_trabajo ALTER COLUMN id_puesto_trabajo DROP DEFAULT;
    	   pribantsa       postgres    false    202    201                       2604    18074    idReconocimiento    DEFAULT     �   ALTER TABLE ONLY reconocimiento ALTER COLUMN "idReconocimiento" SET DEFAULT nextval('"reconocimiento_idReconocimiento_seq"'::regclass);
 S   ALTER TABLE pribantsa.reconocimiento ALTER COLUMN "idReconocimiento" DROP DEFAULT;
    	   pribantsa       postgres    false    204    203                       2604    18075 	   idSancion    DEFAULT     l   ALTER TABLE ONLY sancion ALTER COLUMN "idSancion" SET DEFAULT nextval('"sancion_idSancion_seq"'::regclass);
 E   ALTER TABLE pribantsa.sancion ALTER COLUMN "idSancion" DROP DEFAULT;
    	   pribantsa       postgres    false    206    205                       2604    18076 
   idTelefono    DEFAULT     p   ALTER TABLE ONLY telefono ALTER COLUMN "idTelefono" SET DEFAULT nextval('"telefono_idTelefono_seq"'::regclass);
 G   ALTER TABLE pribantsa.telefono ALTER COLUMN "idTelefono" DROP DEFAULT;
    	   pribantsa       postgres    false    208    207                       2604    18077 
   idTipoBono    DEFAULT     r   ALTER TABLE ONLY tipo_bono ALTER COLUMN "idTipoBono" SET DEFAULT nextval('"tipo_bono_idTipoBono_seq"'::regclass);
 H   ALTER TABLE pribantsa.tipo_bono ALTER COLUMN "idTipoBono" DROP DEFAULT;
    	   pribantsa       postgres    false    210    209                       2604    18078    idTipoContrato    DEFAULT     �   ALTER TABLE ONLY tipo_contrato ALTER COLUMN "idTipoContrato" SET DEFAULT nextval('"tipo_contrato_idTipoContrato_seq"'::regclass);
 P   ALTER TABLE pribantsa.tipo_contrato ALTER COLUMN "idTipoContrato" DROP DEFAULT;
    	   pribantsa       postgres    false    212    211                       2604    18079    idTipoDescuento    DEFAULT     �   ALTER TABLE ONLY tipo_descuento ALTER COLUMN "idTipoDescuento" SET DEFAULT nextval('"tipo_descuento_idTipoDescuento_seq"'::regclass);
 R   ALTER TABLE pribantsa.tipo_descuento ALTER COLUMN "idTipoDescuento" DROP DEFAULT;
    	   pribantsa       postgres    false    214    213                       2604    18080    idTipoPermiso    DEFAULT     ~   ALTER TABLE ONLY tipo_permiso ALTER COLUMN "idTipoPermiso" SET DEFAULT nextval('"tipo_permiso_idTipoPermiso_seq"'::regclass);
 N   ALTER TABLE pribantsa.tipo_permiso ALTER COLUMN "idTipoPermiso" DROP DEFAULT;
    	   pribantsa       postgres    false    216    215                       2604    18081    idTransaccion    DEFAULT     |   ALTER TABLE ONLY transaccion ALTER COLUMN "idTransaccion" SET DEFAULT nextval('"transaccion_idTransaccion_seq"'::regclass);
 M   ALTER TABLE pribantsa.transaccion ALTER COLUMN "idTransaccion" DROP DEFAULT;
    	   pribantsa       postgres    false    218    217                       2604    18082 
   idVacacion    DEFAULT     p   ALTER TABLE ONLY vacacion ALTER COLUMN "idVacacion" SET DEFAULT nextval('"vacacion_idVacacion_seq"'::regclass);
 G   ALTER TABLE pribantsa.vacacion ALTER COLUMN "idVacacion" DROP DEFAULT;
    	   pribantsa       postgres    false    220    219            �          0    17675    bono 
   TABLE DATA               D   COPY bono ("idBono", fecha, "idTipoBono", "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    173         <	           0    0    bono_idBono_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"bono_idBono_seq"', 1, false);
         	   pribantsa       postgres    false    174            �          0    17680    capacitacion 
   TABLE DATA               t   COPY capacitacion ("idCapacitacion", nombre, descripcion, lugar, fecha_inicio, fecha_fin, "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    175   :      =	           0    0    capacitacion_idCapacitacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"capacitacion_idCapacitacion_seq"', 1, false);
         	   pribantsa       postgres    false    176            �          0    17688    contrato 
   TABLE DATA               b   COPY contrato ("idContrato", "idEmpleado", "idTipoContrato", fecha_inicio, fecha_fin) FROM stdin;
 	   pribantsa       postgres    false    177   W      >	           0    0    contrato_idContrato_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"contrato_idContrato_seq"', 1, false);
         	   pribantsa       postgres    false    178            �          0    17693    correo 
   TABLE DATA               ;   COPY correo ("idCorreo", correo, "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    179   t      ?	           0    0    correo_idCorreo_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"correo_idCorreo_seq"', 1, false);
         	   pribantsa       postgres    false    180            �          0    17701    criterio 
   TABLE DATA               H   COPY criterio ("idCriterio", descripcion, peso, "idPuesto") FROM stdin;
 	   pribantsa       postgres    false    181   �      @	           0    0    criterio_idCriterio_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"criterio_idCriterio_seq"', 1, false);
         	   pribantsa       postgres    false    182            �          0    17709    departamento 
   TABLE DATA               E   COPY departamento (id_departamento, nombre, descripcion) FROM stdin;
 	   pribantsa       postgres    false    183   �      A	           0    0    departamento_idepartamento_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('departamento_idepartamento_seq', 45, true);
         	   pribantsa       postgres    false    184            �          0    17717 	   descuento 
   TABLE DATA               S   COPY descuento ("idDescuento", fecha, "idTipoDescuento", "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    185   1      B	           0    0    descuento_idDescuento_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"descuento_idDescuento_seq"', 1, false);
         	   pribantsa       postgres    false    186            �          0    17722 	   educacion 
   TABLE DATA               o   COPY educacion (id_educacion, titulo, fecha, id_empleado_estudios, lugar, institucion, idx, nivel) FROM stdin;
 	   pribantsa       postgres    false    187   N      C	           0    0    educacion_educacion_seqid    SEQUENCE SET     A   SELECT pg_catalog.setval('educacion_educacion_seqid', 23, true);
         	   pribantsa       postgres    false    188            �          0    17730    empleado 
   TABLE DATA               �   COPY empleado (empleado_id, dui, isss, afp, sexo, id_departamento, nit, nombre, apellido, cuenta, salario, id_puestotrabajo, edad, estado_civil, idx) FROM stdin;
 	   pribantsa       postgres    false    189   �      D	           0    0    empleado_empleado_idseq    SEQUENCE SET     ?   SELECT pg_catalog.setval('empleado_empleado_idseq', 26, true);
         	   pribantsa       postgres    false    190            �          0    17738 
   evaluacion 
   TABLE DATA               Y   COPY evaluacion ("idEvaluacion", puntaje, fecha, "idEmpleado", "idCriterio") FROM stdin;
 	   pribantsa       postgres    false    191   �      E	           0    0    evaluacion_idEvaluacion_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"evaluacion_idEvaluacion_seq"', 1, false);
         	   pribantsa       postgres    false    192            	          0    18085    exp_laboral 
   TABLE DATA               V   COPY exp_laboral (lugar, tiempo, cargo, id_explaboral, "idEmpleado", idx) FROM stdin;
 	   pribantsa       postgres    false    222         F	           0    0    exp_laboral_id_explaboral_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('exp_laboral_id_explaboral_seq', 9, true);
         	   pribantsa       postgres    false    221            G	           0    0 #   obj_departamento_id_objetivodep_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('obj_departamento_id_objetivodep_seq', 148, true);
         	   pribantsa       postgres    false    224            	          0    18134    objdepartamento 
   TABLE DATA               [   COPY objdepartamento (tipo, descripcion, id_objetivodep, id_departamento, idx) FROM stdin;
 	   pribantsa       postgres    false    223   /      �          0    17743    objetivo 
   TABLE DATA               H   COPY objetivo (id_objetivo, funcion, idpuesto_trabajo, idx) FROM stdin;
 	   pribantsa       postgres    false    193   �      H	           0    0    objetivo_id_objetivo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('objetivo_id_objetivo_seq', 23, true);
         	   pribantsa       postgres    false    194            �          0    17751    permiso 
   TABLE DATA               _   COPY permiso ("idPermiso", remunerado, inicio, fin, "idEmpleado", "idTipoPermiso") FROM stdin;
 	   pribantsa       postgres    false    195         I	           0    0    permiso_idPermiso_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"permiso_idPermiso_seq"', 1, false);
         	   pribantsa       postgres    false    196            �          0    17756    planilla 
   TABLE DATA               P   COPY planilla ("idPlanilla", fecha_inicio, fecha_fin, "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    197   :      J	           0    0    planilla_idPlanilla_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"planilla_idPlanilla_seq"', 1, false);
         	   pribantsa       postgres    false    198            �          0    17761    puesto_historico 
   TABLE DATA               k   COPY puesto_historico ("idHistoricoPuesto", "idPuesto", "idEmpleado", fecha_inicio, fecha_fin) FROM stdin;
 	   pribantsa       postgres    false    199   W      K	           0    0 &   puesto_historico_idHistoricoPuesto_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"puesto_historico_idHistoricoPuesto_seq"', 1, false);
         	   pribantsa       postgres    false    200            �          0    17766    puesto_trabajo 
   TABLE DATA               c   COPY puesto_trabajo (id_puesto_trabajo, nombre, descripcion, salario_max, salario_min) FROM stdin;
 	   pribantsa       postgres    false    201   t      L	           0    0 "   puesto_trabajo_idpuestotrabajo_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('puesto_trabajo_idpuestotrabajo_seq', 8, true);
         	   pribantsa       postgres    false    202            �          0    17774    reconocimiento 
   TABLE DATA               P   COPY reconocimiento ("idReconocimiento", descripcion, "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    203   �      M	           0    0 #   reconocimiento_idReconocimiento_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"reconocimiento_idReconocimiento_seq"', 1, false);
         	   pribantsa       postgres    false    204            �          0    17782    sancion 
   TABLE DATA               S   COPY sancion ("idSancion", gravedad, descripcion, fecha, "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    205   �      N	           0    0    sancion_idSancion_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"sancion_idSancion_seq"', 1, false);
         	   pribantsa       postgres    false    206            �          0    17790    telefono 
   TABLE DATA               A   COPY telefono ("idTelefono", telefono, "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    207   �      O	           0    0    telefono_idTelefono_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"telefono_idTelefono_seq"', 1, false);
         	   pribantsa       postgres    false    208            �          0    17798 	   tipo_bono 
   TABLE DATA               B   COPY tipo_bono ("idTipoBono", "idPuesto", porcentaje) FROM stdin;
 	   pribantsa       postgres    false    209         P	           0    0    tipo_bono_idTipoBono_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"tipo_bono_idTipoBono_seq"', 1, false);
         	   pribantsa       postgres    false    210            �          0    17803    tipo_contrato 
   TABLE DATA               ?   COPY tipo_contrato ("idTipoContrato", descripcion) FROM stdin;
 	   pribantsa       postgres    false    211         Q	           0    0     tipo_contrato_idTipoContrato_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"tipo_contrato_idTipoContrato_seq"', 1, false);
         	   pribantsa       postgres    false    212            �          0    17811    tipo_descuento 
   TABLE DATA               M   COPY tipo_descuento ("idTipoDescuento", descripcion, porcentaje) FROM stdin;
 	   pribantsa       postgres    false    213   ;      R	           0    0 "   tipo_descuento_idTipoDescuento_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"tipo_descuento_idTipoDescuento_seq"', 1, false);
         	   pribantsa       postgres    false    214             	          0    17819    tipo_permiso 
   TABLE DATA               =   COPY tipo_permiso ("idTipoPermiso", descripcion) FROM stdin;
 	   pribantsa       postgres    false    215   X      S	           0    0    tipo_permiso_idTipoPermiso_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"tipo_permiso_idTipoPermiso_seq"', 1, false);
         	   pribantsa       postgres    false    216            	          0    17827    transaccion 
   TABLE DATA               [   COPY transaccion ("idTransaccion", "idEmpleado", credito_debito, monto, fecha) FROM stdin;
 	   pribantsa       postgres    false    217   u      T	           0    0    transaccion_idTransaccion_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"transaccion_idTransaccion_seq"', 1, false);
         	   pribantsa       postgres    false    218            	          0    17832    vacacion 
   TABLE DATA               P   COPY vacacion ("idVacacion", fecha_inicio, fecha_fin, "idEmpleado") FROM stdin;
 	   pribantsa       postgres    false    219   �      U	           0    0    vacacion_idVacacion_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"vacacion_idVacacion_seq"', 1, false);
         	   pribantsa       postgres    false    220                       2606    17862    pk_bono 
   CONSTRAINT     I   ALTER TABLE ONLY bono
    ADD CONSTRAINT pk_bono PRIMARY KEY ("idBono");
 9   ALTER TABLE ONLY pribantsa.bono DROP CONSTRAINT pk_bono;
    	   pribantsa         postgres    false    173    173                       2606    17864    pk_capacitacion 
   CONSTRAINT     a   ALTER TABLE ONLY capacitacion
    ADD CONSTRAINT pk_capacitacion PRIMARY KEY ("idCapacitacion");
 I   ALTER TABLE ONLY pribantsa.capacitacion DROP CONSTRAINT pk_capacitacion;
    	   pribantsa         postgres    false    175    175                       2606    17866    pk_contrato 
   CONSTRAINT     U   ALTER TABLE ONLY contrato
    ADD CONSTRAINT pk_contrato PRIMARY KEY ("idContrato");
 A   ALTER TABLE ONLY pribantsa.contrato DROP CONSTRAINT pk_contrato;
    	   pribantsa         postgres    false    177    177            !           2606    17868 	   pk_correo 
   CONSTRAINT     O   ALTER TABLE ONLY correo
    ADD CONSTRAINT pk_correo PRIMARY KEY ("idCorreo");
 =   ALTER TABLE ONLY pribantsa.correo DROP CONSTRAINT pk_correo;
    	   pribantsa         postgres    false    179    179            #           2606    17870    pk_criterio 
   CONSTRAINT     U   ALTER TABLE ONLY criterio
    ADD CONSTRAINT pk_criterio PRIMARY KEY ("idCriterio");
 A   ALTER TABLE ONLY pribantsa.criterio DROP CONSTRAINT pk_criterio;
    	   pribantsa         postgres    false    181    181            %           2606    17872    pk_departamento 
   CONSTRAINT     `   ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id_departamento);
 I   ALTER TABLE ONLY pribantsa.departamento DROP CONSTRAINT pk_departamento;
    	   pribantsa         postgres    false    183    183            '           2606    17874    pk_descuento 
   CONSTRAINT     X   ALTER TABLE ONLY descuento
    ADD CONSTRAINT pk_descuento PRIMARY KEY ("idDescuento");
 C   ALTER TABLE ONLY pribantsa.descuento DROP CONSTRAINT pk_descuento;
    	   pribantsa         postgres    false    185    185            )           2606    17876    pk_educacion 
   CONSTRAINT     W   ALTER TABLE ONLY educacion
    ADD CONSTRAINT pk_educacion PRIMARY KEY (id_educacion);
 C   ALTER TABLE ONLY pribantsa.educacion DROP CONSTRAINT pk_educacion;
    	   pribantsa         postgres    false    187    187            +           2606    17878    pk_empleado 
   CONSTRAINT     T   ALTER TABLE ONLY empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (empleado_id);
 A   ALTER TABLE ONLY pribantsa.empleado DROP CONSTRAINT pk_empleado;
    	   pribantsa         postgres    false    189    189            -           2606    17880    pk_evaluacion 
   CONSTRAINT     [   ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT pk_evaluacion PRIMARY KEY ("idEvaluacion");
 E   ALTER TABLE ONLY pribantsa.evaluacion DROP CONSTRAINT pk_evaluacion;
    	   pribantsa         postgres    false    191    191            K           2606    18093    pk_experiencialaboral 
   CONSTRAINT     c   ALTER TABLE ONLY exp_laboral
    ADD CONSTRAINT pk_experiencialaboral PRIMARY KEY (id_explaboral);
 N   ALTER TABLE ONLY pribantsa.exp_laboral DROP CONSTRAINT pk_experiencialaboral;
    	   pribantsa         postgres    false    222    222            5           2606    17882    pk_historico_puesto 
   CONSTRAINT     l   ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT pk_historico_puesto PRIMARY KEY ("idHistoricoPuesto");
 Q   ALTER TABLE ONLY pribantsa.puesto_historico DROP CONSTRAINT pk_historico_puesto;
    	   pribantsa         postgres    false    199    199            M           2606    18150    pk_objedeparment 
   CONSTRAINT     c   ALTER TABLE ONLY objdepartamento
    ADD CONSTRAINT pk_objedeparment PRIMARY KEY (id_objetivodep);
 M   ALTER TABLE ONLY pribantsa.objdepartamento DROP CONSTRAINT pk_objedeparment;
    	   pribantsa         postgres    false    223    223            /           2606    17884    pk_objetivo 
   CONSTRAINT     T   ALTER TABLE ONLY objetivo
    ADD CONSTRAINT pk_objetivo PRIMARY KEY (id_objetivo);
 A   ALTER TABLE ONLY pribantsa.objetivo DROP CONSTRAINT pk_objetivo;
    	   pribantsa         postgres    false    193    193            1           2606    17886 
   pk_permiso 
   CONSTRAINT     R   ALTER TABLE ONLY permiso
    ADD CONSTRAINT pk_permiso PRIMARY KEY ("idPermiso");
 ?   ALTER TABLE ONLY pribantsa.permiso DROP CONSTRAINT pk_permiso;
    	   pribantsa         postgres    false    195    195            3           2606    17888    pk_planilla 
   CONSTRAINT     U   ALTER TABLE ONLY planilla
    ADD CONSTRAINT pk_planilla PRIMARY KEY ("idPlanilla");
 A   ALTER TABLE ONLY pribantsa.planilla DROP CONSTRAINT pk_planilla;
    	   pribantsa         postgres    false    197    197            7           2606    17890    pk_puesto_trabajo 
   CONSTRAINT     f   ALTER TABLE ONLY puesto_trabajo
    ADD CONSTRAINT pk_puesto_trabajo PRIMARY KEY (id_puesto_trabajo);
 M   ALTER TABLE ONLY pribantsa.puesto_trabajo DROP CONSTRAINT pk_puesto_trabajo;
    	   pribantsa         postgres    false    201    201            9           2606    17892    pk_reconocimiento 
   CONSTRAINT     g   ALTER TABLE ONLY reconocimiento
    ADD CONSTRAINT pk_reconocimiento PRIMARY KEY ("idReconocimiento");
 M   ALTER TABLE ONLY pribantsa.reconocimiento DROP CONSTRAINT pk_reconocimiento;
    	   pribantsa         postgres    false    203    203            ;           2606    17894 
   pk_sancion 
   CONSTRAINT     R   ALTER TABLE ONLY sancion
    ADD CONSTRAINT pk_sancion PRIMARY KEY ("idSancion");
 ?   ALTER TABLE ONLY pribantsa.sancion DROP CONSTRAINT pk_sancion;
    	   pribantsa         postgres    false    205    205            =           2606    17896    pk_telefono 
   CONSTRAINT     U   ALTER TABLE ONLY telefono
    ADD CONSTRAINT pk_telefono PRIMARY KEY ("idTelefono");
 A   ALTER TABLE ONLY pribantsa.telefono DROP CONSTRAINT pk_telefono;
    	   pribantsa         postgres    false    207    207            ?           2606    17898    pk_tipo_bono 
   CONSTRAINT     W   ALTER TABLE ONLY tipo_bono
    ADD CONSTRAINT pk_tipo_bono PRIMARY KEY ("idTipoBono");
 C   ALTER TABLE ONLY pribantsa.tipo_bono DROP CONSTRAINT pk_tipo_bono;
    	   pribantsa         postgres    false    209    209            A           2606    17900    pk_tipo_contrato 
   CONSTRAINT     c   ALTER TABLE ONLY tipo_contrato
    ADD CONSTRAINT pk_tipo_contrato PRIMARY KEY ("idTipoContrato");
 K   ALTER TABLE ONLY pribantsa.tipo_contrato DROP CONSTRAINT pk_tipo_contrato;
    	   pribantsa         postgres    false    211    211            E           2606    17902    pk_tipo_permiso 
   CONSTRAINT     `   ALTER TABLE ONLY tipo_permiso
    ADD CONSTRAINT pk_tipo_permiso PRIMARY KEY ("idTipoPermiso");
 I   ALTER TABLE ONLY pribantsa.tipo_permiso DROP CONSTRAINT pk_tipo_permiso;
    	   pribantsa         postgres    false    215    215            G           2606    17904    pk_transaccion 
   CONSTRAINT     ^   ALTER TABLE ONLY transaccion
    ADD CONSTRAINT pk_transaccion PRIMARY KEY ("idTransaccion");
 G   ALTER TABLE ONLY pribantsa.transaccion DROP CONSTRAINT pk_transaccion;
    	   pribantsa         postgres    false    217    217            I           2606    17906    pk_vacacion 
   CONSTRAINT     U   ALTER TABLE ONLY vacacion
    ADD CONSTRAINT pk_vacacion PRIMARY KEY ("idVacacion");
 A   ALTER TABLE ONLY pribantsa.vacacion DROP CONSTRAINT pk_vacacion;
    	   pribantsa         postgres    false    219    219            C           2606    17908    tipo_descuento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY tipo_descuento
    ADD CONSTRAINT tipo_descuento_pkey PRIMARY KEY ("idTipoDescuento");
 O   ALTER TABLE ONLY pribantsa.tipo_descuento DROP CONSTRAINT tipo_descuento_pkey;
    	   pribantsa         postgres    false    213    213            N           2606    17909    fk_bono_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY bono
    ADD CONSTRAINT fk_bono_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY pribantsa.bono DROP CONSTRAINT fk_bono_empleado;
    	   pribantsa       postgres    false    189    173    2091            O           2606    17914    fk_capacitacion_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY capacitacion
    ADD CONSTRAINT fk_capacitacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY pribantsa.capacitacion DROP CONSTRAINT fk_capacitacion_empleado;
    	   pribantsa       postgres    false    189    175    2091            P           2606    17919    fk_contrato_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY contrato
    ADD CONSTRAINT fk_contrato_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY pribantsa.contrato DROP CONSTRAINT fk_contrato_empleado;
    	   pribantsa       postgres    false    2091    177    189            R           2606    17924    fk_correo_empleado    FK CONSTRAINT     {   ALTER TABLE ONLY correo
    ADD CONSTRAINT fk_correo_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id);
 F   ALTER TABLE ONLY pribantsa.correo DROP CONSTRAINT fk_correo_empleado;
    	   pribantsa       postgres    false    2091    179    189            S           2606    17929    fk_criterio_puesto    FK CONSTRAINT     �   ALTER TABLE ONLY criterio
    ADD CONSTRAINT fk_criterio_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY pribantsa.criterio DROP CONSTRAINT fk_criterio_puesto;
    	   pribantsa       postgres    false    181    201    2103            X           2606    18192    fk_departamento    FK CONSTRAINT     �   ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento);
 E   ALTER TABLE ONLY pribantsa.empleado DROP CONSTRAINT fk_departamento;
    	   pribantsa       postgres    false    2085    189    183            T           2606    17939    fk_descuento_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY descuento
    ADD CONSTRAINT fk_descuento_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY pribantsa.descuento DROP CONSTRAINT fk_descuento_empleado;
    	   pribantsa       postgres    false    185    189    2091            U           2606    17944    fk_descuento_tipo    FK CONSTRAINT     �   ALTER TABLE ONLY descuento
    ADD CONSTRAINT fk_descuento_tipo FOREIGN KEY ("idTipoDescuento") REFERENCES tipo_descuento("idTipoDescuento") ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY pribantsa.descuento DROP CONSTRAINT fk_descuento_tipo;
    	   pribantsa       postgres    false    185    213    2115            V           2606    17949    fk_educacion_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY educacion
    ADD CONSTRAINT fk_educacion_empleado FOREIGN KEY (id_empleado_estudios) REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY pribantsa.educacion DROP CONSTRAINT fk_educacion_empleado;
    	   pribantsa       postgres    false    187    189    2091            W           2606    17954    fk_empleado_puesto    FK CONSTRAINT     �   ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_empleado_puesto FOREIGN KEY (id_puestotrabajo) REFERENCES puesto_trabajo(id_puesto_trabajo);
 H   ALTER TABLE ONLY pribantsa.empleado DROP CONSTRAINT fk_empleado_puesto;
    	   pribantsa       postgres    false    189    201    2103            Y           2606    17959    fk_evaluacion_criterio    FK CONSTRAINT     �   ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT fk_evaluacion_criterio FOREIGN KEY ("idCriterio") REFERENCES criterio("idCriterio") ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY pribantsa.evaluacion DROP CONSTRAINT fk_evaluacion_criterio;
    	   pribantsa       postgres    false    191    181    2083            Z           2606    17964    fk_evaluacion_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT fk_evaluacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY pribantsa.evaluacion DROP CONSTRAINT fk_evaluacion_empleado;
    	   pribantsa       postgres    false    191    189    2091            g           2606    18094    fk_exp_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY exp_laboral
    ADD CONSTRAINT fk_exp_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY pribantsa.exp_laboral DROP CONSTRAINT fk_exp_empleado;
    	   pribantsa       postgres    false    222    189    2091            _           2606    17969    fk_historico_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT fk_historico_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY pribantsa.puesto_historico DROP CONSTRAINT fk_historico_empleado;
    	   pribantsa       postgres    false    199    189    2091            `           2606    17974    fk_historico_puesto    FK CONSTRAINT     �   ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT fk_historico_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY pribantsa.puesto_historico DROP CONSTRAINT fk_historico_puesto;
    	   pribantsa       postgres    false    199    201    2103            h           2606    18151    fk_objetivo_departamento    FK CONSTRAINT     �   ALTER TABLE ONLY objdepartamento
    ADD CONSTRAINT fk_objetivo_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento);
 U   ALTER TABLE ONLY pribantsa.objdepartamento DROP CONSTRAINT fk_objetivo_departamento;
    	   pribantsa       postgres    false    2085    183    223            [           2606    17979    fk_objetivo_puesto    FK CONSTRAINT     �   ALTER TABLE ONLY objetivo
    ADD CONSTRAINT fk_objetivo_puesto FOREIGN KEY (idpuesto_trabajo) REFERENCES puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY pribantsa.objetivo DROP CONSTRAINT fk_objetivo_puesto;
    	   pribantsa       postgres    false    193    201    2103            \           2606    17984    fk_permiso_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY permiso
    ADD CONSTRAINT fk_permiso_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY pribantsa.permiso DROP CONSTRAINT fk_permiso_empleado;
    	   pribantsa       postgres    false    2091    195    189            ]           2606    17989    fk_permiso_tipoP    FK CONSTRAINT     �   ALTER TABLE ONLY permiso
    ADD CONSTRAINT "fk_permiso_tipoP" FOREIGN KEY ("idTipoPermiso") REFERENCES tipo_permiso("idTipoPermiso") ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY pribantsa.permiso DROP CONSTRAINT "fk_permiso_tipoP";
    	   pribantsa       postgres    false    2117    195    215            ^           2606    17994    fk_planilla_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY planilla
    ADD CONSTRAINT fk_planilla_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY pribantsa.planilla DROP CONSTRAINT fk_planilla_empleado;
    	   pribantsa       postgres    false    2091    189    197            a           2606    17999    fk_reconocimiento_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY reconocimiento
    ADD CONSTRAINT fk_reconocimiento_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY pribantsa.reconocimiento DROP CONSTRAINT fk_reconocimiento_empleado;
    	   pribantsa       postgres    false    203    2091    189            b           2606    18004    fk_sancion_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY sancion
    ADD CONSTRAINT fk_sancion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY pribantsa.sancion DROP CONSTRAINT fk_sancion_empleado;
    	   pribantsa       postgres    false    205    2091    189            c           2606    18009    fk_telefono_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY telefono
    ADD CONSTRAINT fk_telefono_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY pribantsa.telefono DROP CONSTRAINT fk_telefono_empleado;
    	   pribantsa       postgres    false    207    189    2091            Q           2606    18014    fk_tipoContrato_contrato    FK CONSTRAINT     �   ALTER TABLE ONLY contrato
    ADD CONSTRAINT "fk_tipoContrato_contrato" FOREIGN KEY ("idTipoContrato") REFERENCES tipo_contrato("idTipoContrato") ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY pribantsa.contrato DROP CONSTRAINT "fk_tipoContrato_contrato";
    	   pribantsa       postgres    false    2113    211    177            d           2606    18019    fk_tipo_bono_puesto    FK CONSTRAINT     �   ALTER TABLE ONLY tipo_bono
    ADD CONSTRAINT fk_tipo_bono_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY pribantsa.tipo_bono DROP CONSTRAINT fk_tipo_bono_puesto;
    	   pribantsa       postgres    false    209    201    2103            e           2606    18024    fk_transaccion_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY transaccion
    ADD CONSTRAINT fk_transaccion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY pribantsa.transaccion DROP CONSTRAINT fk_transaccion_empleado;
    	   pribantsa       postgres    false    189    217    2091            f           2606    18029    fk_vacacion_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY vacacion
    ADD CONSTRAINT fk_vacacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY pribantsa.vacacion DROP CONSTRAINT fk_vacacion_empleado;
    	   pribantsa       postgres    false    2091    189    219            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   s   x��11��~��
j�4�ą9ǉ�N��9�����H]-A}�4��y��7�u�pz���G��� ��U��E;�HA�*ès�
jLz�ܧ�Y�%PL,$ֿ,Q"�[��-T.�      �      x������ � �      �   :   x�32���.NI�*N�4204�5 !N#3Μ�씬4N�\vN��Sbqfr"W� ��u      �   M   x�32�4�]8���r��rB��(�ꂢ�ԤD����b΂�b���d}��@]�FƜ��9%�E��\1z\\\ O.�      �      x������ � �      	      x������ � �      	   �   x�M�=
�0��>�NP�8��B�:gQc�l����(%��ޓ��3/&�,)�n�T���KB1�wf����ϾH0���l���l��9�d�µ�g�x�&�/
�1DN\jF�@�\���Ui��U0��R�������=�m�DV�E_ u^����Z�%�No      �   *   x�32�,K�1��4�22���lC.#c��6����� �T�      �      x������ � �      �      x������ � �      �      x������ � �      �   &   x���,�NI�*N���L,N��461�442������ ��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �       	      x������ � �      	      x������ � �      	      x������ � �     