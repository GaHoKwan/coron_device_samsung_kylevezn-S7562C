.class public interface abstract Lcom/android/internal/telephony/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# static fields
.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final PROPERTY_AIRPLAIN_CDMA:Ljava/lang/String; = "gsm.airplain.cdma"

.field public static final PROPERTY_AIRPLAIN_GSM:Ljava/lang/String; = "gsm.airplain.gsm"

.field public static final PROPERTY_API_SIM:Ljava/lang/String; = "persist.sys.api.simid"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_BPM_SETTING_ENABLE:Ljava/lang/String; = "persist.sys.bpmsetting.enable"

.field public static final PROPERTY_CALL_DEFAULT_SIM_ID:Ljava/lang/String; = "persist.radio.calldefault.simid"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static final PROPERTY_CMAS_ENABLE:Ljava/lang/String; = "persist.sys.cmas.enable"

.field public static final PROPERTY_CURRENT_BOOT_MODEM:Ljava/lang/String; = "persist.radio.boot.modem"

.field public static final PROPERTY_DATA_MMS_BUSY:Ljava/lang/String; = "persist.data.mms.busy"

.field public static final PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final PROPERTY_DATA_NETWORK_TYPE_1:Ljava/lang/String; = "gsm.network.type_1"

.field public static final PROPERTY_DATA_PREFER_SIM_ID:Ljava/lang/String; = "persist.sys.dataprefer.simid"

.field public static final PROPERTY_DATA_SERVICE:Ljava/lang/String; = "net.gprs.current.data"

.field public static final PROPERTY_DEFAULT_ESN:Ljava/lang/String; = "gsm.default.esn"

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_DUALMODE_NETWORK_RESET:Ljava/lang/String; = "ril.dualmode.network-reset"

.field public static final PROPERTY_DUALMODE_TEST:Ljava/lang/String; = "ril.dualmode.test"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static final PROPERTY_ECN_ENABLE:Ljava/lang/String; = "persist.sys.radio.enable"

.field public static final PROPERTY_ECN_SC:Ljava/lang/String; = "persist.sys.radio.sc"

.field public static final PROPERTY_FASTDORMANCY_ENABLE:Ljava/lang/String; = "persist.radio.fastdormancy"

.field public static final PROPERTY_FASTDORMANCY_INACTTIMER:Ljava/lang/String; = "persist.radio.inactivity"

.field public static final PROPERTY_ICC_CB_CHANNEL_LIST:Ljava/lang/String; = "persist.radio.icc.cb.list"

.field public static final PROPERTY_ICC_CB_LANGUAGE_INDEX:Ljava/lang/String; = "persist.radio.icc.cb.lang"

.field public static final PROPERTY_ICC_MAX_CB_CHANNELS:Ljava/lang/String; = "persist.radio.icc.cb.count"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC_1:Ljava/lang/String; = "gsm.sim.operator.numeric_1"

.field public static final PROPERTY_IDP_STRING:Ljava/lang/String; = "ro.cdma.idpstring"

.field public static final PROPERTY_IGNORE_NITZ:Ljava/lang/String; = "telephony.test.ignore.nitz"

.field public static final PROPERTY_INE911:Ljava/lang/String; = "ril.cdma.ine911"

.field public static final PROPERTY_INE911_AIRPLANEMODE:Ljava/lang/String; = "ril.gsm.ine911.airplanemode"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static final PROPERTY_LTE_ON_CDMA_DEVICE:Ljava/lang/String; = "telephony.lteOnCdmaDevice"

.field public static final PROPERTY_LTE_ON_CDMA_GLOBAL_MODE:Ljava/lang/String; = "persist.radio.LOCGlobalMode"

.field public static final PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE:Ljava/lang/String; = "telephony.lteOnCdmaProductType"

.field public static final PROPERTY_NETWORKOPERATOR:Ljava/lang/String; = "persist.radio.networkoperator"

.field public static final PROPERTY_NETWORKOPERATOR_1:Ljava/lang/String; = "persist.radio.networkoperator_1"

.field public static final PROPERTY_NETWORK_TYPE:Ljava/lang/String; = "persist.radio.networktype"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING_1:Ljava/lang/String; = "gsm.operator.isroaming_1"

.field public static final PROPERTY_OPERATOR_ISROAMING_CDMA:Ljava/lang/String; = "gsm.operator.isroaming.cdma"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OPERATOR_NUMERIC_SPRINT:Ljava/lang/String; = "gsm.operator.numeric.sprint"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_PDP_CONTEXT_SIM_ID:Ljava/lang/String; = "persist.sys.pdpcontext.simid"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_SIM_IMSI_M:Ljava/lang/String; = "gsm.sim.imsim"

.field public static final PROPERTY_SIM_IRM:Ljava/lang/String; = "gsm.sim.irm"

.field public static final PROPERTY_SIM_MSISDN:Ljava/lang/String; = "gsm.sim.msisdn"

.field public static final PROPERTY_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final PROPERTY_SMS_GCF_MODE:Ljava/lang/String; = "ril.sms.gcf-mode"

.field public static final PROPERTY_SMS_REASSEMBLY:Ljava/lang/String; = "ril.sms.reassembly"

.field public static final PROPERTY_SMS_RECEIVE:Ljava/lang/String; = "telephony.sms.receive"

.field public static final PROPERTY_SMS_SEND:Ljava/lang/String; = "telephony.sms.send"

.field public static final PROPERTY_TEST_CSIM:Ljava/lang/String; = "persist.radio.test-csim"

.field public static final PROPERTY_TETHERING_TEST_MODE:Ljava/lang/String; = "ril.tethering.test_mode"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field public static final SET_BOOTING_PHONE:Ljava/lang/String; = "gsm.booting.phone"
