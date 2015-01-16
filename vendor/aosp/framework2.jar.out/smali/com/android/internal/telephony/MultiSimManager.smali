.class public Lcom/android/internal/telephony/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# static fields
.field private static final APPEND_PROPERTY_SIMSLOT_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APPEND_SIMSLOT_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APPEND_SOCKET_NAME_SIMSLOT_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "MultiSimManager"

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field public static final mPhoneOnKey:[Ljava/lang/String;

.field public static final mSimIconKey:[Ljava/lang/String;

.field public static final mSimNameKey:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select_name_1"

    aput-object v1, v0, v3

    const-string v1, "select_name_2"

    aput-object v1, v0, v4

    const-string v1, "select_name_3"

    aput-object v1, v0, v5

    const-string v1, "select_name_4"

    aput-object v1, v0, v6

    const-string v1, "select_name_5"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select_icon_1"

    aput-object v1, v0, v3

    const-string v1, "select_icon_2"

    aput-object v1, v0, v4

    const-string v1, "select_icon_3"

    aput-object v1, v0, v5

    const-string v1, "select_icon_4"

    aput-object v1, v0, v6

    const-string v1, "select_icon_5"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "phone1_on"

    aput-object v1, v0, v3

    const-string v1, "phone2_on"

    aput-object v1, v0, v4

    const-string v1, "phone3_on"

    aput-object v1, v0, v5

    const-string v1, "phone4_on"

    aput-object v1, v0, v6

    const-string v1, "phone5_on"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    .line 59
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "phone"

    aput-object v1, v0, v3

    const-string v1, "com.orange.authentication.simcard"

    aput-object v1, v0, v4

    const-string v1, "iphonesubinfo"

    aput-object v1, v0, v5

    const-string v1, "simphonebook"

    aput-object v1, v0, v6

    const-string v1, "telephony.registry"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "isms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "phoneext"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content://icc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "content://telephony/carriers/preferapn_no_update"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "content://telephony/carriers/preferapn"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "apn_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "gsm.STK_SETUP_MENU"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "settings_simtab"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->APPEND_SIMSLOT_LIST:Ljava/util/List;

    .line 80
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gsm.current.phone-type"

    aput-object v1, v0, v3

    const-string v1, "gsm.operator.alpha"

    aput-object v1, v0, v4

    const-string v1, "gsm.operator.numeric"

    aput-object v1, v0, v5

    const-string v1, "gsm.operator.isroaming"

    aput-object v1, v0, v6

    const-string v1, "gsm.operator.iso-country"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "gsm.sim.state"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gsm.sim.operator.numeric"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gsm.sim.operator.alpha"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gsm.sim.operator.iso-country"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "persist.radio.networktype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gsm.network.type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ro.telephony.call_ring.multiple"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ro.telephony.call_ring.delay"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ro.ril.wake_lock_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ril.cdma.inecmmode"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ro.cdma.otaspnumschema"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ro.cdma.ecmexittimer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "persist.radio.icc.cb.lang"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "persist.radio.icc.cb.list"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "persist.radio.icc.cb.count"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ro.telephony.disable-call"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "gsm.airplain.gsm"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "gsm.version.baseband"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "gsm.airplain.cdma"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gsm.sim.unknownready"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ril.ecclist"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ril.ecclist0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ril.ecclist1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ro.ril.ecclist"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ril.ICC_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "current"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "network_selection_key"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "network_selection_name_key"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "clir_key"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "vm_number_key"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "vm_sim_imsi_key"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "key_iccid"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ril.isIccChanged"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "IMSI"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "data_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "fdn_internet"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->APPEND_PROPERTY_SIMSLOT_LIST:Ljava/util/List;

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "rild"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->APPEND_SOCKET_NAME_SIMSLOT_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "simSlot"

    .prologue
    .line 228
    move-object v0, p0

    .line 230
    .local v0, str:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->APPEND_PROPERTY_SIMSLOT_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    if-eqz p1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " text is not registered in APPEND_PROPERTY_SIMSLOT_LIST. or simSlot value is bigger than getSimSlotCount()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "simSlot"

    .prologue
    .line 214
    move-object v0, p0

    .line 216
    .local v0, str:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->APPEND_SIMSLOT_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    if-eqz p1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :cond_1
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " text is not registered in APPEND_SIMSLOT_LIST. or simSlot value is bigger than getSimSlotCount()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static appendSocketNameSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "socketName"
    .parameter "simSlot"

    .prologue
    .line 242
    move-object v0, p0

    .line 244
    .local v0, str:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->APPEND_SOCKET_NAME_SIMSLOT_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    if-eqz p1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " text is not registered in APPEND_SOCKET_NAME_SIMSLOT_LIST. or simSlot value is bigger than getSimSlotCount()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getActivatedSimNum()I
    .locals 4

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 202
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v2

    .line 204
    .local v2, simState:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 201
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v2           #simState:I
    :cond_1
    return v0
.end method

.method public static getDefaultSimSlot()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public static getInsertedSimNum()I
    .locals 6

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, simSlot:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 189
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, iccType:Ljava/lang/String;
    const-string v3, "MultiSimManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v1           #iccType:Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static getIsSIMOn(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x1

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 329
    .local v0, simActive:I
    if-ne v0, v1, :cond_0

    .line 331
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSimCardIcon(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 295
    .local v0, simIcon:I
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardIcon ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-gez v0, :cond_0

    .line 297
    packed-switch p1, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 299
    :pswitch_0
    const/4 v0, 0x0

    .line 300
    goto :goto_0

    .line 302
    :pswitch_1
    const/4 v0, 0x1

    .line 303
    goto :goto_0

    .line 305
    :pswitch_2
    const/4 v0, 0x2

    .line 306
    goto :goto_0

    .line 308
    :pswitch_3
    const/4 v0, 0x3

    .line 309
    goto :goto_0

    .line 311
    :pswitch_4
    const/4 v0, 0x4

    .line 312
    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimCardName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, simName:Ljava/lang/String;
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-nez v0, :cond_0

    .line 263
    packed-switch p1, :pswitch_data_0

    .line 280
    const-string v0, "SIM 1"

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :pswitch_0
    const-string v0, "SIM 1"

    .line 266
    goto :goto_0

    .line 268
    :pswitch_1
    const-string v0, "SIM 2"

    .line 269
    goto :goto_0

    .line 271
    :pswitch_2
    const-string v0, "SIM 3"

    .line 272
    goto :goto_0

    .line 274
    :pswitch_3
    const-string v0, "SIM 4"

    .line 275
    goto :goto_0

    .line 277
    :pswitch_4
    const-string v0, "SIM 5"

    .line 278
    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimSlotCount()I
    .locals 2

    .prologue
    .line 138
    const-string v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isAllSimExist()Z
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 168
    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimManager;->isSimExist(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 172
    :goto_1
    return v1

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isMultiSimSlot()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoSIM()Z
    .locals 6

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 154
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, iccType:Ljava/lang/String;
    const-string v3, "MultiSimManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNoSIM() : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v1           #iccType:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 161
    const/4 v3, 0x1

    .line 163
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isSimExist(I)Z
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 176
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 177
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v1

    .line 181
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setIsSIMOn(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "simSlot"
    .parameter "isOn"

    .prologue
    .line 335
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM 1 change the set turned on or off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v2, v0, p1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSimCardIcon(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "simSlot"
    .parameter "icon"

    .prologue
    .line 323
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    return-void
.end method

.method public static setSimCardName(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "simSlot"
    .parameter "name"

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    return-void
.end method
