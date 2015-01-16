.class public abstract Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "IPhoneRestrictionPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IPhoneRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IPhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IPhoneRestrictionPolicy"

.field static final TRANSACTION_addIncomingCallRestriction:I = 0x6

.field static final TRANSACTION_addIncomingSmsRestriction:I = 0x1b

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x13

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x27

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x14

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x28

.field static final TRANSACTION_addOutgoingCallRestriction:I = 0x5

.field static final TRANSACTION_addOutgoingSmsRestriction:I = 0x1a

.field static final TRANSACTION_allowCallerIDDisplay:I = 0x44

.field static final TRANSACTION_allowIncomingMms:I = 0x37

.field static final TRANSACTION_allowIncomingSms:I = 0x33

.field static final TRANSACTION_allowOutgoingMms:I = 0x38

.field static final TRANSACTION_allowOutgoingSms:I = 0x34

.field static final TRANSACTION_allowWapPush:I = 0x42

.field static final TRANSACTION_blockMmsWithStorage:I = 0x3d

.field static final TRANSACTION_blockSmsWithStorage:I = 0x3b

.field static final TRANSACTION_canIncomingCall:I = 0xa

.field static final TRANSACTION_canIncomingSms:I = 0x1f

.field static final TRANSACTION_canOutgoingCall:I = 0x9

.field static final TRANSACTION_canOutgoingSms:I = 0x1e

.field static final TRANSACTION_checkDataCallLimit:I = 0x30

.field static final TRANSACTION_checkEnableUseOfPacketData:I = 0x2f

.field static final TRANSACTION_clearStoredBlockedMms:I = 0x41

.field static final TRANSACTION_clearStoredBlockedSms:I = 0x40

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x29

.field static final TRANSACTION_enableLimitNumberOfCalls:I = 0xd

.field static final TRANSACTION_enableLimitNumberOfSms:I = 0x20

.field static final TRANSACTION_getDataCallLimitEnabled:I = 0x2b

.field static final TRANSACTION_getEmergencyCallOnly:I = 0xc

.field static final TRANSACTION_getIncomingCallRestriction:I = 0x2

.field static final TRANSACTION_getIncomingSmsRestriction:I = 0x17

.field static final TRANSACTION_getLimitOfDataCalls:I = 0x2d

.field static final TRANSACTION_getLimitOfIncomingCalls:I = 0x10

.field static final TRANSACTION_getLimitOfIncomingSms:I = 0x24

.field static final TRANSACTION_getLimitOfOutgoingCalls:I = 0x12

.field static final TRANSACTION_getLimitOfOutgoingSms:I = 0x26

.field static final TRANSACTION_getOutgoingCallRestriction:I = 0x1

.field static final TRANSACTION_getOutgoingSmsRestriction:I = 0x16

.field static final TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x3e

.field static final TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x3c

.field static final TRANSACTION_isCallerIDDisplayAllowed:I = 0x45

.field static final TRANSACTION_isIncomingMmsAllowed:I = 0x39

.field static final TRANSACTION_isIncomingSmsAllowed:I = 0x35

.field static final TRANSACTION_isLimitNumberOfCallsEnabled:I = 0xe

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x21

.field static final TRANSACTION_isOutgoingMmsAllowed:I = 0x3a

.field static final TRANSACTION_isOutgoingSmsAllowed:I = 0x36

.field static final TRANSACTION_isWapPushAllowed:I = 0x43

.field static final TRANSACTION_removeIncomingCallRestriction:I = 0x4

.field static final TRANSACTION_removeIncomingSmsRestriction:I = 0x19

.field static final TRANSACTION_removeOutgoingCallRestriction:I = 0x3

.field static final TRANSACTION_removeOutgoingSmsRestriction:I = 0x18

.field static final TRANSACTION_resetCallsCount:I = 0x15

.field static final TRANSACTION_resetDataCallLimitCounter:I = 0x2e

.field static final TRANSACTION_resetSmsCount:I = 0x22

.field static final TRANSACTION_setDataCallLimitEnabled:I = 0x2a

.field static final TRANSACTION_setEmergencyCallOnly:I = 0xb

.field static final TRANSACTION_setIncomingCallRestriction:I = 0x8

.field static final TRANSACTION_setIncomingSmsRestriction:I = 0x1d

.field static final TRANSACTION_setLimitOfDataCalls:I = 0x2c

.field static final TRANSACTION_setLimitOfIncomingCalls:I = 0xf

.field static final TRANSACTION_setLimitOfIncomingSms:I = 0x23

.field static final TRANSACTION_setLimitOfOutgoingCalls:I = 0x11

.field static final TRANSACTION_setLimitOfOutgoingSms:I = 0x25

.field static final TRANSACTION_setOutgoingCallRestriction:I = 0x7

.field static final TRANSACTION_setOutgoingSmsRestriction:I = 0x1c

.field static final TRANSACTION_storeBlockedSmsMms:I = 0x3f

.field static final TRANSACTION_updateDataLimitState:I = 0x32

.field static final TRANSACTION_updateDateAndDataCallCounters:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/app/enterprise/IPhoneRestrictionPolicy;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 707
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 50
    .local v2, _arg0:Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getOutgoingCallRestriction(Z)Ljava/lang/String;

    move-result-object v14

    .line 51
    .local v14, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    .end local v2           #_arg0:Z
    .end local v14           #_result:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 57
    :sswitch_2
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 60
    .restart local v2       #_arg0:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getIncomingCallRestriction(Z)Ljava/lang/String;

    move-result-object v14

    .line 61
    .restart local v14       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 59
    .end local v2           #_arg0:Z
    .end local v14           #_result:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 67
    :sswitch_3
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeOutgoingCallRestriction()Z

    move-result v14

    .line 69
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v14, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 75
    .end local v14           #_result:Z
    :sswitch_4
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeIncomingCallRestriction()Z

    move-result v14

    .line 77
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v14, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 78
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 83
    .end local v14           #_result:Z
    :sswitch_5
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v14

    .line 87
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v14, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 88
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 93
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_6
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v14

    .line 97
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v14, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 98
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 103
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_7
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v14

    .line 107
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v14, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 108
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 113
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_8
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v14

    .line 117
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v14, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 118
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 123
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_9
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v14

    .line 127
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v14, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 128
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 133
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_a
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v14

    .line 137
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v14, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 138
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 143
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_b
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    .line 146
    .local v2, _arg0:Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setEmergencyCallOnly(Z)Z

    move-result v14

    .line 147
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v14, :cond_b

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 145
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 148
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 153
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_c
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    .line 156
    .restart local v2       #_arg0:Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v14

    .line 157
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v14, :cond_d

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 155
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 158
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 163
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_d
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 166
    .restart local v2       #_arg0:Z
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->enableLimitNumberOfCalls(Z)Z

    move-result v14

    .line 167
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v14, :cond_f

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 165
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 168
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 173
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_e
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isLimitNumberOfCallsEnabled()Z

    move-result v14

    .line 175
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v14, :cond_10

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 176
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 181
    .end local v14           #_result:Z
    :sswitch_f
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 188
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfIncomingCalls(III)Z

    move-result v14

    .line 189
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v14, :cond_11

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 190
    :cond_11
    const/4 v1, 0x0

    goto :goto_12

    .line 195
    .end local v2           #_arg0:I
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_10
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfIncomingCalls(I)I

    move-result v14

    .line 199
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 205
    .end local v2           #_arg0:I
    .end local v14           #_result:I
    :sswitch_11
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 212
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfOutgoingCalls(III)Z

    move-result v14

    .line 213
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v14, :cond_12

    const/4 v1, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 214
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 219
    .end local v2           #_arg0:I
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_12
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfOutgoingCalls(I)I

    move-result v14

    .line 223
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 229
    .end local v2           #_arg0:I
    .end local v14           #_result:I
    :sswitch_13
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfIncomingCalls()Z

    move-result v14

    .line 231
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v14, :cond_13

    const/4 v1, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 232
    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    .line 237
    .end local v14           #_result:Z
    :sswitch_14
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v14

    .line 239
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v14, :cond_14

    const/4 v1, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 240
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 245
    .end local v14           #_result:Z
    :sswitch_15
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetCallsCount()Z

    move-result v14

    .line 247
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v14, :cond_15

    const/4 v1, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 248
    :cond_15
    const/4 v1, 0x0

    goto :goto_16

    .line 253
    .end local v14           #_result:Z
    :sswitch_16
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v2, 0x1

    .line 256
    .local v2, _arg0:Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getOutgoingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v14

    .line 257
    .local v14, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 255
    .end local v2           #_arg0:Z
    .end local v14           #_result:Ljava/lang/String;
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 263
    :sswitch_17
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    .line 266
    .restart local v2       #_arg0:Z
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getIncomingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v14

    .line 267
    .restart local v14       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 265
    .end local v2           #_arg0:Z
    .end local v14           #_result:Ljava/lang/String;
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 273
    :sswitch_18
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeOutgoingSmsRestriction()Z

    move-result v14

    .line 275
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v14, :cond_18

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 276
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 281
    .end local v14           #_result:Z
    :sswitch_19
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeIncomingSmsRestriction()Z

    move-result v14

    .line 283
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v14, :cond_19

    const/4 v1, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 284
    :cond_19
    const/4 v1, 0x0

    goto :goto_1a

    .line 289
    .end local v14           #_result:Z
    :sswitch_1a
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v14

    .line 293
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v14, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 294
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 299
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_1b
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v14

    .line 303
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v14, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 304
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 309
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_1c
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v14

    .line 313
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v14, :cond_1c

    const/4 v1, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 314
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1d

    .line 319
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_1d
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v14

    .line 323
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v14, :cond_1d

    const/4 v1, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 324
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 329
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_1e
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v14

    .line 333
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v14, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 334
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 339
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_1f
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v14

    .line 343
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v14, :cond_1f

    const/4 v1, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 344
    :cond_1f
    const/4 v1, 0x0

    goto :goto_20

    .line 349
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_20
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    .line 352
    .local v2, _arg0:Z
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->enableLimitNumberOfSms(Z)Z

    move-result v14

    .line 353
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v14, :cond_21

    const/4 v1, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 351
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_20
    const/4 v2, 0x0

    goto :goto_21

    .line 354
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_21
    const/4 v1, 0x0

    goto :goto_22

    .line 359
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_21
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v14

    .line 361
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v14, :cond_22

    const/4 v1, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 362
    :cond_22
    const/4 v1, 0x0

    goto :goto_23

    .line 367
    .end local v14           #_result:Z
    :sswitch_22
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetSmsCount()Z

    move-result v14

    .line 369
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v14, :cond_23

    const/4 v1, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 370
    :cond_23
    const/4 v1, 0x0

    goto :goto_24

    .line 375
    .end local v14           #_result:Z
    :sswitch_23
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 381
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 382
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfIncomingSms(III)Z

    move-result v14

    .line 383
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v14, :cond_24

    const/4 v1, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 384
    :cond_24
    const/4 v1, 0x0

    goto :goto_25

    .line 389
    .end local v2           #_arg0:I
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_24
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 392
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfIncomingSms(I)I

    move-result v14

    .line 393
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 399
    .end local v2           #_arg0:I
    .end local v14           #_result:I
    :sswitch_25
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 403
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 405
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 406
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfOutgoingSms(III)Z

    move-result v14

    .line 407
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v14, :cond_25

    const/4 v1, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 408
    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    .line 413
    .end local v2           #_arg0:I
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_26
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfOutgoingSms(I)I

    move-result v14

    .line 417
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 423
    .end local v2           #_arg0:I
    .end local v14           #_result:I
    :sswitch_27
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfIncomingSms()Z

    move-result v14

    .line 425
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v14, :cond_26

    const/4 v1, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 426
    :cond_26
    const/4 v1, 0x0

    goto :goto_27

    .line 431
    .end local v14           #_result:Z
    :sswitch_28
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfOutgoingSms()Z

    move-result v14

    .line 433
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v14, :cond_27

    const/4 v1, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 434
    :cond_27
    const/4 v1, 0x0

    goto :goto_28

    .line 439
    .end local v14           #_result:Z
    :sswitch_29
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v14

    .line 441
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v14, :cond_28

    const/4 v1, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 442
    :cond_28
    const/4 v1, 0x0

    goto :goto_29

    .line 447
    .end local v14           #_result:Z
    :sswitch_2a
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    const/4 v2, 0x1

    .line 450
    .local v2, _arg0:Z
    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setDataCallLimitEnabled(Z)Z

    move-result v14

    .line 451
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v14, :cond_2a

    const/4 v1, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 449
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .line 452
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_2a
    const/4 v1, 0x0

    goto :goto_2b

    .line 457
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_2b
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getDataCallLimitEnabled()Z

    move-result v14

    .line 459
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v14, :cond_2b

    const/4 v1, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 460
    :cond_2b
    const/4 v1, 0x0

    goto :goto_2c

    .line 465
    .end local v14           #_result:Z
    :sswitch_2c
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 469
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 471
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, _arg2:J
    move-object/from16 v1, p0

    .line 472
    invoke-virtual/range {v1 .. v7}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfDataCalls(JJJ)Z

    move-result v14

    .line 473
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v14, :cond_2c

    const/4 v1, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 474
    :cond_2c
    const/4 v1, 0x0

    goto :goto_2d

    .line 479
    .end local v2           #_arg0:J
    .end local v4           #_arg1:J
    .end local v6           #_arg2:J
    .end local v14           #_result:Z
    :sswitch_2d
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfDataCalls(I)J

    move-result-wide v14

    .line 483
    .local v14, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 485
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 489
    .end local v2           #_arg0:I
    .end local v14           #_result:J
    :sswitch_2e
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetDataCallLimitCounter()Z

    move-result v14

    .line 491
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v14, :cond_2d

    const/4 v1, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 492
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2e

    .line 497
    .end local v14           #_result:Z
    :sswitch_2f
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x1

    .line 500
    .local v2, _arg0:Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->checkEnableUseOfPacketData(Z)Z

    move-result v14

    .line 501
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v14, :cond_2f

    const/4 v1, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 499
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_2e
    const/4 v2, 0x0

    goto :goto_2f

    .line 502
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_2f
    const/4 v1, 0x0

    goto :goto_30

    .line 507
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_30
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->checkDataCallLimit()Z

    move-result v14

    .line 509
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v14, :cond_30

    const/4 v1, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 510
    :cond_30
    const/4 v1, 0x0

    goto :goto_31

    .line 515
    .end local v14           #_result:Z
    :sswitch_31
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 518
    .local v2, _arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->updateDateAndDataCallCounters(J)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 524
    .end local v2           #_arg0:J
    :sswitch_32
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->updateDataLimitState()V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 531
    :sswitch_33
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    const/4 v2, 0x1

    .line 534
    .local v2, _arg0:Z
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->allowIncomingSms(Z)Z

    move-result v14

    .line 535
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v14, :cond_32

    const/4 v1, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 533
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 536
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_32
    const/4 v1, 0x0

    goto :goto_33

    .line 541
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_34
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    const/4 v2, 0x1

    .line 544
    .restart local v2       #_arg0:Z
    :goto_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->allowOutgoingSms(Z)Z

    move-result v14

    .line 545
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v14, :cond_34

    const/4 v1, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 543
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_33
    const/4 v2, 0x0

    goto :goto_34

    .line 546
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_34
    const/4 v1, 0x0

    goto :goto_35

    .line 551
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_35
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isIncomingSmsAllowed()Z

    move-result v14

    .line 553
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    if-eqz v14, :cond_35

    const/4 v1, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 554
    :cond_35
    const/4 v1, 0x0

    goto :goto_36

    .line 559
    .end local v14           #_result:Z
    :sswitch_36
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isOutgoingSmsAllowed()Z

    move-result v14

    .line 561
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v14, :cond_36

    const/4 v1, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 562
    :cond_36
    const/4 v1, 0x0

    goto :goto_37

    .line 567
    .end local v14           #_result:Z
    :sswitch_37
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_37

    const/4 v2, 0x1

    .line 570
    .restart local v2       #_arg0:Z
    :goto_38
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->allowIncomingMms(Z)Z

    move-result v14

    .line 571
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v14, :cond_38

    const/4 v1, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 569
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_37
    const/4 v2, 0x0

    goto :goto_38

    .line 572
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_38
    const/4 v1, 0x0

    goto :goto_39

    .line 577
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_38
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39

    const/4 v2, 0x1

    .line 580
    .restart local v2       #_arg0:Z
    :goto_3a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->allowOutgoingMms(Z)Z

    move-result v14

    .line 581
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v14, :cond_3a

    const/4 v1, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 579
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_39
    const/4 v2, 0x0

    goto :goto_3a

    .line 582
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_3a
    const/4 v1, 0x0

    goto :goto_3b

    .line 587
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_39
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isIncomingMmsAllowed()Z

    move-result v14

    .line 589
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v14, :cond_3b

    const/4 v1, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 590
    :cond_3b
    const/4 v1, 0x0

    goto :goto_3c

    .line 595
    .end local v14           #_result:Z
    :sswitch_3a
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isOutgoingMmsAllowed()Z

    move-result v14

    .line 597
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v14, :cond_3c

    const/4 v1, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 598
    :cond_3c
    const/4 v1, 0x0

    goto :goto_3d

    .line 603
    .end local v14           #_result:Z
    :sswitch_3b
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v2, 0x1

    .line 606
    .restart local v2       #_arg0:Z
    :goto_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->blockSmsWithStorage(Z)Z

    move-result v14

    .line 607
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v14, :cond_3e

    const/4 v1, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 605
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_3d
    const/4 v2, 0x0

    goto :goto_3e

    .line 608
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_3e
    const/4 v1, 0x0

    goto :goto_3f

    .line 613
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_3c
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isBlockSmsWithStorageEnabled()Z

    move-result v14

    .line 615
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    if-eqz v14, :cond_3f

    const/4 v1, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 616
    :cond_3f
    const/4 v1, 0x0

    goto :goto_40

    .line 621
    .end local v14           #_result:Z
    :sswitch_3d
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_40

    const/4 v2, 0x1

    .line 624
    .restart local v2       #_arg0:Z
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->blockMmsWithStorage(Z)Z

    move-result v14

    .line 625
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v14, :cond_41

    const/4 v1, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 623
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_40
    const/4 v2, 0x0

    goto :goto_41

    .line 626
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_41
    const/4 v1, 0x0

    goto :goto_42

    .line 631
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_3e
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isBlockMmsWithStorageEnabled()Z

    move-result v14

    .line 633
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v14, :cond_42

    const/4 v1, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 634
    :cond_42
    const/4 v1, 0x0

    goto :goto_43

    .line 639
    .end local v14           #_result:Z
    :sswitch_3f
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    const/4 v2, 0x1

    .line 643
    .restart local v2       #_arg0:Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 645
    .local v4, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 647
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 649
    .local v12, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, _arg4:Ljava/lang/String;
    move-object/from16 v8, p0

    move v9, v2

    move-object v10, v4

    move-object v11, v6

    .line 650
    invoke-virtual/range {v8 .. v13}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 641
    .end local v2           #_arg0:Z
    .end local v4           #_arg1:[B
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v12           #_arg3:I
    .end local v13           #_arg4:Ljava/lang/String;
    :cond_43
    const/4 v2, 0x0

    goto :goto_44

    .line 656
    :sswitch_40
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->clearStoredBlockedSms()Z

    move-result v14

    .line 658
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v14, :cond_44

    const/4 v1, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 659
    :cond_44
    const/4 v1, 0x0

    goto :goto_45

    .line 664
    .end local v14           #_result:Z
    :sswitch_41
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->clearStoredBlockedMms()Z

    move-result v14

    .line 666
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    if-eqz v14, :cond_45

    const/4 v1, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 667
    :cond_45
    const/4 v1, 0x0

    goto :goto_46

    .line 672
    .end local v14           #_result:Z
    :sswitch_42
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46

    const/4 v2, 0x1

    .line 675
    .restart local v2       #_arg0:Z
    :goto_47
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->allowWapPush(Z)Z

    move-result v14

    .line 676
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    if-eqz v14, :cond_47

    const/4 v1, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 674
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_46
    const/4 v2, 0x0

    goto :goto_47

    .line 677
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_47
    const/4 v1, 0x0

    goto :goto_48

    .line 682
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_43
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isWapPushAllowed()Z

    move-result v14

    .line 684
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    if-eqz v14, :cond_48

    const/4 v1, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 685
    :cond_48
    const/4 v1, 0x0

    goto :goto_49

    .line 690
    .end local v14           #_result:Z
    :sswitch_44
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_49

    const/4 v2, 0x1

    .line 693
    .restart local v2       #_arg0:Z
    :goto_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->allowCallerIDDisplay(Z)Z

    move-result v14

    .line 694
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    if-eqz v14, :cond_4a

    const/4 v1, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 692
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :cond_49
    const/4 v2, 0x0

    goto :goto_4a

    .line 695
    .restart local v2       #_arg0:Z
    .restart local v14       #_result:Z
    :cond_4a
    const/4 v1, 0x0

    goto :goto_4b

    .line 700
    .end local v2           #_arg0:Z
    .end local v14           #_result:Z
    :sswitch_45
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isCallerIDDisplayAllowed()Z

    move-result v14

    .line 702
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v14, :cond_4b

    const/4 v1, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 703
    :cond_4b
    const/4 v1, 0x0

    goto :goto_4c

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
