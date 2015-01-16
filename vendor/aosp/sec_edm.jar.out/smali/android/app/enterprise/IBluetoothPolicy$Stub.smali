.class public abstract Landroid/app/enterprise/IBluetoothPolicy$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IBluetoothPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IBluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IBluetoothPolicy"

.field static final TRANSACTION_activateBluetoothDeviceRestriction:I = 0x23

.field static final TRANSACTION_activateBluetoothUUIDRestriction:I = 0x1a

.field static final TRANSACTION_addBluetoothDevicesToBlackList:I = 0x1b

.field static final TRANSACTION_addBluetoothDevicesToWhiteList:I = 0x1f

.field static final TRANSACTION_addBluetoothUUIDsToBlackList:I = 0x12

.field static final TRANSACTION_addBluetoothUUIDsToWhiteList:I = 0x16

.field static final TRANSACTION_allowBluetooth:I = 0x4

.field static final TRANSACTION_allowCallerIDDisplay:I = 0x30

.field static final TRANSACTION_allowOutgoingCalls:I = 0x8

.field static final TRANSACTION_bluetoothLog:I = 0x2f

.field static final TRANSACTION_clearBluetoothDevicesFromBlackList:I = 0x1d

.field static final TRANSACTION_clearBluetoothDevicesFromWhiteList:I = 0x21

.field static final TRANSACTION_clearBluetoothUUIDsFromBlackList:I = 0x14

.field static final TRANSACTION_clearBluetoothUUIDsFromWhiteList:I = 0x18

.field static final TRANSACTION_getAllBluetoothDevicesBlackLists:I = 0x1e

.field static final TRANSACTION_getAllBluetoothDevicesWhiteLists:I = 0x22

.field static final TRANSACTION_getAllBluetoothUUIDsBlackLists:I = 0x15

.field static final TRANSACTION_getAllBluetoothUUIDsWhiteLists:I = 0x19

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x2

.field static final TRANSACTION_getBluetoothLog:I = 0x2e

.field static final TRANSACTION_getEffectiveBluetoothDevicesBlackLists:I = 0x2a

.field static final TRANSACTION_getEffectiveBluetoothDevicesWhiteLists:I = 0x2b

.field static final TRANSACTION_getEffectiveBluetoothUUIDsBlackLists:I = 0x28

.field static final TRANSACTION_getEffectiveBluetoothUUIDsWhiteLists:I = 0x29

.field static final TRANSACTION_isBluetoothDeviceAllowed:I = 0x27

.field static final TRANSACTION_isBluetoothDeviceRestrictionActive:I = 0x25

.field static final TRANSACTION_isBluetoothEnabled:I = 0x5

.field static final TRANSACTION_isBluetoothLogEnabled:I = 0x2d

.field static final TRANSACTION_isBluetoothUUIDAllowed:I = 0x26

.field static final TRANSACTION_isBluetoothUUIDRestrictionActive:I = 0x24

.field static final TRANSACTION_isCallerIDDisplayAllowed:I = 0x31

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x11

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0xb

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0x9

.field static final TRANSACTION_isPairingEnabled:I = 0x7

.field static final TRANSACTION_isProfileEnabled:I = 0xd

.field static final TRANSACTION_removeBluetoothDevicesFromBlackList:I = 0x1c

.field static final TRANSACTION_removeBluetoothDevicesFromWhiteList:I = 0x20

.field static final TRANSACTION_removeBluetoothUUIDsFromBlackList:I = 0x13

.field static final TRANSACTION_removeBluetoothUUIDsFromWhiteList:I = 0x17

.field static final TRANSACTION_setAllowBluetoothDataTransfer:I = 0x1

.field static final TRANSACTION_setBluetooth:I = 0x3

.field static final TRANSACTION_setBluetoothLogEnabled:I = 0x2c

.field static final TRANSACTION_setDesktopConnectivityState:I = 0x10

.field static final TRANSACTION_setDiscoverableState:I = 0xe

.field static final TRANSACTION_setLimitedDiscoverableState:I = 0xa

.field static final TRANSACTION_setPairingState:I = 0x6

.field static final TRANSACTION_setProfileState:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.app.enterprise.IBluetoothPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IBluetoothPolicy;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 497
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 53
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setAllowBluetoothDataTransfer(Z)Z

    move-result v3

    .line 54
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_0

    move v7, v6

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_1
    move v0, v7

    .line 52
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v0, v6

    .line 63
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getAllowBluetoothDataTransfer(Z)Z

    move-result v3

    .line 64
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_2

    move v7, v6

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_3
    move v0, v7

    .line 62
    goto :goto_2

    .line 70
    :sswitch_3
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v0, v6

    .line 73
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setBluetooth(Z)Z

    move-result v3

    .line 74
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v3, :cond_4

    move v7, v6

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_5
    move v0, v7

    .line 72
    goto :goto_3

    .line 80
    :sswitch_4
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    move v0, v6

    .line 83
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->allowBluetooth(Z)Z

    move-result v3

    .line 84
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_6

    move v7, v6

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_7
    move v0, v7

    .line 82
    goto :goto_4

    .line 90
    :sswitch_5
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isBluetoothEnabled()Z

    move-result v3

    .line 92
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v3, :cond_8

    move v7, v6

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 98
    .end local v3           #_result:Z
    :sswitch_6
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    move v0, v6

    .line 101
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setPairingState(Z)Z

    move-result v3

    .line 102
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v3, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_a
    move v0, v7

    .line 100
    goto :goto_5

    .line 108
    :sswitch_7
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isPairingEnabled()Z

    move-result v3

    .line 110
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_b

    move v7, v6

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v3           #_result:Z
    :sswitch_8
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v0, v6

    .line 119
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->allowOutgoingCalls(Z)Z

    move-result v3

    .line 120
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v3, :cond_c

    move v7, v6

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_d
    move v0, v7

    .line 118
    goto :goto_6

    .line 126
    :sswitch_9
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isOutgoingCallsAllowed()Z

    move-result v3

    .line 128
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v3, :cond_e

    move v7, v6

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v3           #_result:Z
    :sswitch_a
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    move v0, v6

    .line 137
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setLimitedDiscoverableState(Z)Z

    move-result v3

    .line 138
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v3, :cond_f

    move v7, v6

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_10
    move v0, v7

    .line 136
    goto :goto_7

    .line 144
    :sswitch_b
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isLimitedDiscoverableEnabled()Z

    move-result v3

    .line 146
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v3, :cond_11

    move v7, v6

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v3           #_result:Z
    :sswitch_c
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_13

    move v0, v6

    .line 156
    .restart local v0       #_arg0:Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setProfileState(ZI)Z

    move-result v3

    .line 158
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v3, :cond_12

    move v7, v6

    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v3           #_result:Z
    :cond_13
    move v0, v7

    .line 154
    goto :goto_8

    .line 164
    :sswitch_d
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isProfileEnabled(I)Z

    move-result v3

    .line 168
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v3, :cond_14

    move v7, v6

    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_e
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_16

    move v0, v6

    .line 177
    .local v0, _arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setDiscoverableState(Z)Z

    move-result v3

    .line 178
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_15

    move v7, v6

    :cond_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_16
    move v0, v7

    .line 176
    goto :goto_9

    .line 184
    :sswitch_f
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isDiscoverableEnabled()Z

    move-result v3

    .line 186
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v3, :cond_17

    move v7, v6

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v3           #_result:Z
    :sswitch_10
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_19

    move v0, v6

    .line 195
    .restart local v0       #_arg0:Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setDesktopConnectivityState(Z)Z

    move-result v3

    .line 196
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v3, :cond_18

    move v7, v6

    :cond_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_19
    move v0, v7

    .line 194
    goto :goto_a

    .line 202
    :sswitch_11
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isDesktopConnectivityEnabled()Z

    move-result v3

    .line 204
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v3, :cond_1a

    move v7, v6

    :cond_1a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v3           #_result:Z
    :sswitch_12
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 213
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->addBluetoothUUIDsToBlackList(Ljava/util/List;)Z

    move-result v3

    .line 214
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v3, :cond_1b

    move v7, v6

    :cond_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 220
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_13
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 223
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->removeBluetoothUUIDsFromBlackList(Ljava/util/List;)Z

    move-result v3

    .line 224
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v3, :cond_1c

    move v7, v6

    :cond_1c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 230
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_14
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->clearBluetoothUUIDsFromBlackList()Z

    move-result v3

    .line 232
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v3, :cond_1d

    move v7, v6

    :cond_1d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 238
    .end local v3           #_result:Z
    :sswitch_15
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getAllBluetoothUUIDsBlackLists()Ljava/util/List;

    move-result-object v4

    .line 240
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 246
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    :sswitch_16
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 250
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v3, :cond_1e

    move v7, v6

    :cond_1e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_17
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 259
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->removeBluetoothUUIDsFromWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 260
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v3, :cond_1f

    move v7, v6

    :cond_1f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_18
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->clearBluetoothUUIDsFromWhiteList()Z

    move-result v3

    .line 268
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v3, :cond_20

    move v7, v6

    :cond_20
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v3           #_result:Z
    :sswitch_19
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getAllBluetoothUUIDsWhiteLists()Ljava/util/List;

    move-result-object v4

    .line 276
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 282
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    :sswitch_1a
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_22

    move v0, v6

    .line 285
    .restart local v0       #_arg0:Z
    :goto_b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->activateBluetoothUUIDRestriction(Z)Z

    move-result v3

    .line 286
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v3, :cond_21

    move v7, v6

    :cond_21
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_22
    move v0, v7

    .line 284
    goto :goto_b

    .line 292
    :sswitch_1b
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 295
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->addBluetoothDevicesToBlackList(Ljava/util/List;)Z

    move-result v3

    .line 296
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v3, :cond_23

    move v7, v6

    :cond_23
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 302
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_1c
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 305
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->removeBluetoothDevicesFromBlackList(Ljava/util/List;)Z

    move-result v3

    .line 306
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v3, :cond_24

    move v7, v6

    :cond_24
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_1d
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->clearBluetoothDevicesFromBlackList()Z

    move-result v3

    .line 314
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v3, :cond_25

    move v7, v6

    :cond_25
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 320
    .end local v3           #_result:Z
    :sswitch_1e
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getAllBluetoothDevicesBlackLists()Ljava/util/List;

    move-result-object v4

    .line 322
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 328
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    :sswitch_1f
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 331
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->addBluetoothDevicesToWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 332
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v3, :cond_26

    move v7, v6

    :cond_26
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_20
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 341
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 342
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v3, :cond_27

    move v7, v6

    :cond_27
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 348
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_21
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->clearBluetoothDevicesFromWhiteList()Z

    move-result v3

    .line 350
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v3, :cond_28

    move v7, v6

    :cond_28
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 356
    .end local v3           #_result:Z
    :sswitch_22
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getAllBluetoothDevicesWhiteLists()Ljava/util/List;

    move-result-object v4

    .line 358
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 364
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    :sswitch_23
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2a

    move v0, v6

    .line 367
    .restart local v0       #_arg0:Z
    :goto_c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->activateBluetoothDeviceRestriction(Z)Z

    move-result v3

    .line 368
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    if-eqz v3, :cond_29

    move v7, v6

    :cond_29
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_2a
    move v0, v7

    .line 366
    goto :goto_c

    .line 374
    :sswitch_24
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isBluetoothUUIDRestrictionActive()Z

    move-result v3

    .line 376
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v3, :cond_2b

    move v7, v6

    :cond_2b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 382
    .end local v3           #_result:Z
    :sswitch_25
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isBluetoothDeviceRestrictionActive()Z

    move-result v3

    .line 384
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v3, :cond_2c

    move v7, v6

    :cond_2c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 390
    .end local v3           #_result:Z
    :sswitch_26
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v3

    .line 394
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v3, :cond_2d

    move v7, v6

    :cond_2d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 400
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_27
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v3

    .line 404
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v3, :cond_2e

    move v7, v6

    :cond_2e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 410
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_28
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getEffectiveBluetoothUUIDsBlackLists()Ljava/util/List;

    move-result-object v5

    .line 412
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 418
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_29
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getEffectiveBluetoothUUIDsWhiteLists()Ljava/util/List;

    move-result-object v5

    .line 420
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 426
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2a
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getEffectiveBluetoothDevicesBlackLists()Ljava/util/List;

    move-result-object v5

    .line 428
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 434
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2b
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getEffectiveBluetoothDevicesWhiteLists()Ljava/util/List;

    move-result-object v5

    .line 436
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 442
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2c
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_30

    move v0, v6

    .line 445
    .local v0, _arg0:Z
    :goto_d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setBluetoothLogEnabled(Z)Z

    move-result v3

    .line 446
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v3, :cond_2f

    move v7, v6

    :cond_2f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_30
    move v0, v7

    .line 444
    goto :goto_d

    .line 452
    :sswitch_2d
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isBluetoothLogEnabled()Z

    move-result v3

    .line 454
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v3, :cond_31

    move v7, v6

    :cond_31
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 460
    .end local v3           #_result:Z
    :sswitch_2e
    const-string v7, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getBluetoothLog()Ljava/util/List;

    move-result-object v5

    .line 462
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 468
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2f
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 474
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v3, :cond_32

    move v7, v6

    :cond_32
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 480
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_30
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_34

    move v0, v6

    .line 483
    .local v0, _arg0:Z
    :goto_e
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->allowCallerIDDisplay(Z)Z

    move-result v3

    .line 484
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v3, :cond_33

    move v7, v6

    :cond_33
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_34
    move v0, v7

    .line 482
    goto :goto_e

    .line 490
    :sswitch_31
    const-string v8, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isCallerIDDisplayAllowed()Z

    move-result v3

    .line 492
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v3, :cond_35

    move v7, v6

    :cond_35
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
