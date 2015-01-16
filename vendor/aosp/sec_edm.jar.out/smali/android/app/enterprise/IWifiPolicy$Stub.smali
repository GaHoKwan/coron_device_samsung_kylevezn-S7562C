.class public abstract Landroid/app/enterprise/IWifiPolicy$Stub;
.super Landroid/os/Binder;
.source "IWifiPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IWifiPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IWifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IWifiPolicy"

.field static final TRANSACTION_activateWifiSsidRestriction:I = 0x62

.field static final TRANSACTION_addBlockedNetwork:I = 0x21

.field static final TRANSACTION_addWifiSsidToBlackList:I = 0x5a

.field static final TRANSACTION_addWifiSsidToWhiteList:I = 0x5e

.field static final TRANSACTION_allowOpenWifiAp:I = 0x56

.field static final TRANSACTION_allowWifiApSettingUserModification:I = 0x54

.field static final TRANSACTION_clearWifiSsidBlackList:I = 0x5c

.field static final TRANSACTION_clearWifiSsidWhiteList:I = 0x60

.field static final TRANSACTION_edmAddOrUpdate:I = 0x51

.field static final TRANSACTION_edmUpdateConfiguredNetworks:I = 0x4c

.field static final TRANSACTION_getAllWifiSsidBlackLists:I = 0x5d

.field static final TRANSACTION_getAllWifiSsidWhiteLists:I = 0x61

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x43

.field static final TRANSACTION_getAllowUserProfiles:I = 0x41

.field static final TRANSACTION_getAutomaticConnectionToWifi:I = 0x59

.field static final TRANSACTION_getBlockedNetworks:I = 0x23

.field static final TRANSACTION_getDHCPEnabled:I = 0x26

.field static final TRANSACTION_getDefaultGateway:I = 0x2a

.field static final TRANSACTION_getDefaultIp:I = 0x28

.field static final TRANSACTION_getDefaultPrimaryDNS:I = 0x2c

.field static final TRANSACTION_getDefaultSecondaryDNS:I = 0x2e

.field static final TRANSACTION_getDefaultSubnetMask:I = 0x30

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x47

.field static final TRANSACTION_getNetworkAnonymousIdValue:I = 0x20

.field static final TRANSACTION_getNetworkCaCertification:I = 0x1a

.field static final TRANSACTION_getNetworkClientCertificate:I = 0x1b

.field static final TRANSACTION_getNetworkDHCPEnabled:I = 0x32

.field static final TRANSACTION_getNetworkEAPType:I = 0x18

.field static final TRANSACTION_getNetworkGateway:I = 0x36

.field static final TRANSACTION_getNetworkIdentityValue:I = 0x1f

.field static final TRANSACTION_getNetworkIp:I = 0x34

.field static final TRANSACTION_getNetworkLinkSecurity:I = 0x5

.field static final TRANSACTION_getNetworkPSK:I = 0x1c

.field static final TRANSACTION_getNetworkPassword:I = 0x1e

.field static final TRANSACTION_getNetworkPhase2:I = 0x19

.field static final TRANSACTION_getNetworkPrimaryDNS:I = 0x38

.field static final TRANSACTION_getNetworkPrivateKey:I = 0x1d

.field static final TRANSACTION_getNetworkSSIDList:I = 0x2

.field static final TRANSACTION_getNetworkSecondaryDNS:I = 0x3a

.field static final TRANSACTION_getNetworkSubnetMask:I = 0x3c

.field static final TRANSACTION_getNetworkWEPKey1:I = 0xb

.field static final TRANSACTION_getNetworkWEPKey2:I = 0xc

.field static final TRANSACTION_getNetworkWEPKey3:I = 0xd

.field static final TRANSACTION_getNetworkWEPKey4:I = 0xe

.field static final TRANSACTION_getNetworkWEPKeyId:I = 0x17

.field static final TRANSACTION_getPasswordHidden:I = 0x4a

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x45

.field static final TRANSACTION_getTlsCertificateSecurityLevel:I = 0x4e

.field static final TRANSACTION_getWifiApSetting:I = 0x53

.field static final TRANSACTION_getWifiProfile:I = 0x50

.field static final TRANSACTION_isEnterpriseNetwork:I = 0x4b

.field static final TRANSACTION_isNetworkBlocked:I = 0x24

.field static final TRANSACTION_isNetworkSecure:I = 0x48

.field static final TRANSACTION_isOpenWifiApAllowed:I = 0x57

.field static final TRANSACTION_isWifiAllowed:I = 0x3f

.field static final TRANSACTION_isWifiApSettingUserModificationAllowed:I = 0x55

.field static final TRANSACTION_isWifiSsidRestrictionActive:I = 0x63

.field static final TRANSACTION_isWifiStateChangeAllowed:I = 0x65

.field static final TRANSACTION_removeBlockedNetwork:I = 0x22

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x3

.field static final TRANSACTION_removeWifiSsidFromBlackList:I = 0x5b

.field static final TRANSACTION_removeWifiSsidFromWhiteList:I = 0x5f

.field static final TRANSACTION_setAllowUserPolicyChanges:I = 0x42

.field static final TRANSACTION_setAllowUserProfiles:I = 0x40

.field static final TRANSACTION_setAutomaticConnectionToWifi:I = 0x58

.field static final TRANSACTION_setDHCPEnabled:I = 0x25

.field static final TRANSACTION_setDefaultGateway:I = 0x29

.field static final TRANSACTION_setDefaultIp:I = 0x27

.field static final TRANSACTION_setDefaultPrimaryDNS:I = 0x2b

.field static final TRANSACTION_setDefaultSecondaryDNS:I = 0x2d

.field static final TRANSACTION_setDefaultSubnetMask:I = 0x2f

.field static final TRANSACTION_setMinimumRequiredSecurity:I = 0x46

.field static final TRANSACTION_setNetworkAnonymousIdValue:I = 0x12

.field static final TRANSACTION_setNetworkCaCertificate:I = 0x15

.field static final TRANSACTION_setNetworkClientCertification:I = 0x14

.field static final TRANSACTION_setNetworkDHCPEnabled:I = 0x31

.field static final TRANSACTION_setNetworkGateway:I = 0x35

.field static final TRANSACTION_setNetworkIdentityValue:I = 0x11

.field static final TRANSACTION_setNetworkIp:I = 0x33

.field static final TRANSACTION_setNetworkLinkSecurity:I = 0x4

.field static final TRANSACTION_setNetworkPSK:I = 0xf

.field static final TRANSACTION_setNetworkPassword:I = 0x10

.field static final TRANSACTION_setNetworkPhase2:I = 0x13

.field static final TRANSACTION_setNetworkPrimaryDNS:I = 0x37

.field static final TRANSACTION_setNetworkPrivateKey:I = 0x16

.field static final TRANSACTION_setNetworkSSID:I = 0x1

.field static final TRANSACTION_setNetworkSecondaryDNS:I = 0x39

.field static final TRANSACTION_setNetworkSubnetMask:I = 0x3b

.field static final TRANSACTION_setNetworkWEPKey1:I = 0x7

.field static final TRANSACTION_setNetworkWEPKey2:I = 0x8

.field static final TRANSACTION_setNetworkWEPKey3:I = 0x9

.field static final TRANSACTION_setNetworkWEPKey4:I = 0xa

.field static final TRANSACTION_setNetworkWEPKeyId:I = 0x6

.field static final TRANSACTION_setPasswordHidden:I = 0x49

.field static final TRANSACTION_setPromptCredentialsEnabled:I = 0x44

.field static final TRANSACTION_setTlsCertificateSecurityLevel:I = 0x4d

.field static final TRANSACTION_setWifi:I = 0x3d

.field static final TRANSACTION_setWifiAllowed:I = 0x3e

.field static final TRANSACTION_setWifiApSetting:I = 0x52

.field static final TRANSACTION_setWifiProfile:I = 0x4f

.field static final TRANSACTION_setWifiStateChangeAllowed:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWifiPolicy;
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
    const-string v1, "android.app.enterprise.IWifiPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IWifiPolicy;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 1081
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSSID(Ljava/lang/String;)Z

    move-result v4

    .line 54
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v6

    .line 62
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 68
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v4

    .line 72
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v4, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 84
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v4, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_5
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKeyId(Ljava/lang/String;I)Z

    move-result v4

    .line 106
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v4, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_7
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 118
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v4, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_8
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 130
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v4, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_9
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 142
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v4, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_a
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 154
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_b
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 206
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v4, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_10
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 218
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_11
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 230
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_12
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 242
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v4, :cond_b

    move v7, v8

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 248
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_13
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 254
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v4, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 260
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_14
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 266
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v4, :cond_d

    move v7, v8

    :cond_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_15
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 278
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v4, :cond_e

    move v7, v8

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 284
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_16
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 290
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v4, :cond_f

    move v7, v8

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_17
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKeyId(Ljava/lang/String;)I

    move-result v4

    .line 300
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_18
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_19
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_1c
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 350
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_1d
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 360
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_1e
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_20
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 389
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->addBlockedNetwork(Ljava/lang/String;)Z

    move-result v4

    .line 400
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v4, :cond_10

    move v7, v8

    :cond_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 406
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_22
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->removeBlockedNetwork(Ljava/lang/String;)Z

    move-result v4

    .line 410
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v4, :cond_11

    move v7, v8

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 416
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_23
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getBlockedNetworks()Ljava/util/List;

    move-result-object v6

    .line 418
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 424
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_24
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    move v2, v8

    .line 429
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v4

    .line 430
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v4, :cond_12

    move v7, v8

    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v4           #_result:Z
    :cond_13
    move v2, v7

    .line 428
    goto :goto_1

    .line 436
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_25
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_15

    move v0, v8

    .line 439
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDHCPEnabled(Z)Z

    move-result v4

    .line 440
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v4, :cond_14

    move v7, v8

    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_15
    move v0, v7

    .line 438
    goto :goto_2

    .line 446
    :sswitch_26
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDHCPEnabled()Z

    move-result v4

    .line 448
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v4, :cond_16

    move v7, v8

    :cond_16
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 454
    .end local v4           #_result:Z
    :sswitch_27
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultIp(Ljava/lang/String;)Z

    move-result v4

    .line 458
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v4, :cond_17

    move v7, v8

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 464
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_28
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultIp()Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_29
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultGateway(Ljava/lang/String;)Z

    move-result v4

    .line 476
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v4, :cond_18

    move v7, v8

    :cond_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 482
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2a
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultGateway()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultPrimaryDNS(Ljava/lang/String;)Z

    move-result v4

    .line 494
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v4, :cond_19

    move v7, v8

    :cond_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 500
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2c
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultPrimaryDNS()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultSecondaryDNS(Ljava/lang/String;)Z

    move-result v4

    .line 512
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    if-eqz v4, :cond_1a

    move v7, v8

    :cond_1a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 518
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2e
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultSecondaryDNS()Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2f
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultSubnetMask(Ljava/lang/String;)Z

    move-result v4

    .line 530
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v4, :cond_1b

    move v7, v8

    :cond_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 536
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_30
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultSubnetMask()Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_31
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d

    move v2, v8

    .line 549
    .restart local v2       #_arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkDHCPEnabled(Ljava/lang/String;Z)Z

    move-result v4

    .line 550
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    if-eqz v4, :cond_1c

    move v7, v8

    :cond_1c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v4           #_result:Z
    :cond_1d
    move v2, v7

    .line 548
    goto :goto_3

    .line 556
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_32
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkDHCPEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 560
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v4, :cond_1e

    move v7, v8

    :cond_1e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 566
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_33
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 572
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v4, :cond_1f

    move v7, v8

    :cond_1f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 578
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_34
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 592
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 594
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    if-eqz v4, :cond_20

    move v7, v8

    :cond_20
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 600
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_36
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_37
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 614
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 615
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 616
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v4, :cond_21

    move v7, v8

    :cond_21
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 622
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_38
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 626
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 632
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_39
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 637
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 638
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v4, :cond_22

    move v7, v8

    :cond_22
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 644
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_3a
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_3b
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 659
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 660
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v4, :cond_23

    move v7, v8

    :cond_23
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 666
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_3c
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_3d
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_25

    move v0, v8

    .line 679
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifi(Z)Z

    move-result v4

    .line 680
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v4, :cond_24

    move v7, v8

    :cond_24
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_25
    move v0, v7

    .line 678
    goto :goto_4

    .line 686
    :sswitch_3e
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_27

    move v0, v8

    .line 689
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifiAllowed(Z)Z

    move-result v4

    .line 690
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v4, :cond_26

    move v7, v8

    :cond_26
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_27
    move v0, v7

    .line 688
    goto :goto_5

    .line 696
    :sswitch_3f
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_29

    move v0, v8

    .line 699
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isWifiAllowed(Z)Z

    move-result v4

    .line 700
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v4, :cond_28

    move v7, v8

    :cond_28
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_29
    move v0, v7

    .line 698
    goto :goto_6

    .line 706
    :sswitch_40
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2b

    move v0, v8

    .line 709
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setAllowUserProfiles(Z)Z

    move-result v4

    .line 710
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v4, :cond_2a

    move v7, v8

    :cond_2a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_2b
    move v0, v7

    .line 708
    goto :goto_7

    .line 716
    :sswitch_41
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2d

    move v0, v8

    .line 719
    .restart local v0       #_arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAllowUserProfiles(Z)Z

    move-result v4

    .line 720
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v4, :cond_2c

    move v7, v8

    :cond_2c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_2d
    move v0, v7

    .line 718
    goto :goto_8

    .line 726
    :sswitch_42
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2f

    move v0, v8

    .line 729
    .restart local v0       #_arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setAllowUserPolicyChanges(Z)Z

    move-result v4

    .line 730
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    if-eqz v4, :cond_2e

    move v7, v8

    :cond_2e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_2f
    move v0, v7

    .line 728
    goto :goto_9

    .line 736
    :sswitch_43
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAllowUserPolicyChanges()Z

    move-result v4

    .line 738
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    if-eqz v4, :cond_30

    move v7, v8

    :cond_30
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 744
    .end local v4           #_result:Z
    :sswitch_44
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_32

    move v0, v8

    .line 747
    .restart local v0       #_arg0:Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setPromptCredentialsEnabled(Z)Z

    move-result v4

    .line 748
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    if-eqz v4, :cond_31

    move v7, v8

    :cond_31
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_32
    move v0, v7

    .line 746
    goto :goto_a

    .line 754
    :sswitch_45
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getPromptCredentialsEnabled()Z

    move-result v4

    .line 756
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    if-eqz v4, :cond_33

    move v7, v8

    :cond_33
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 762
    .end local v4           #_result:Z
    :sswitch_46
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 765
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setMinimumRequiredSecurity(I)Z

    move-result v4

    .line 766
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v4, :cond_34

    move v7, v8

    :cond_34
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 772
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_47
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getMinimumRequiredSecurity()I

    move-result v4

    .line 774
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 780
    .end local v4           #_result:I
    :sswitch_48
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 784
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_36

    move v2, v8

    .line 785
    .local v2, _arg1:Z
    :goto_b
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->isNetworkSecure(IZ)Z

    move-result v4

    .line 786
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    if-eqz v4, :cond_35

    move v7, v8

    :cond_35
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v4           #_result:Z
    :cond_36
    move v2, v7

    .line 784
    goto :goto_b

    .line 792
    .end local v0           #_arg0:I
    :sswitch_49
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_38

    move v0, v8

    .line 795
    .local v0, _arg0:Z
    :goto_c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setPasswordHidden(Z)Z

    move-result v4

    .line 796
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    if-eqz v4, :cond_37

    move v7, v8

    :cond_37
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_38
    move v0, v7

    .line 794
    goto :goto_c

    .line 802
    :sswitch_4a
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getPasswordHidden()Z

    move-result v4

    .line 804
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    if-eqz v4, :cond_39

    move v7, v8

    :cond_39
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 810
    .end local v4           #_result:Z
    :sswitch_4b
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v4

    .line 814
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    if-eqz v4, :cond_3a

    move v7, v8

    :cond_3a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 820
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4c
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->edmUpdateConfiguredNetworks()V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 827
    :sswitch_4d
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 830
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setTlsCertificateSecurityLevel(I)Z

    move-result v4

    .line 831
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    if-eqz v4, :cond_3b

    move v7, v8

    :cond_3b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 837
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_4e
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getTlsCertificateSecurityLevel()I

    move-result v4

    .line 839
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 845
    .end local v4           #_result:I
    :sswitch_4f
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3d

    .line 848
    sget-object v9, Landroid/app/enterprise/WifiAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/WifiAdminProfile;

    .line 853
    .local v0, _arg0:Landroid/app/enterprise/WifiAdminProfile;
    :goto_d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z

    move-result v4

    .line 854
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v4, :cond_3c

    move v7, v8

    :cond_3c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 851
    .end local v0           #_arg0:Landroid/app/enterprise/WifiAdminProfile;
    .end local v4           #_result:Z
    :cond_3d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/enterprise/WifiAdminProfile;
    goto :goto_d

    .line 860
    .end local v0           #_arg0:Landroid/app/enterprise/WifiAdminProfile;
    :sswitch_50
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;

    move-result-object v4

    .line 864
    .local v4, _result:Landroid/app/enterprise/WifiAdminProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    if-eqz v4, :cond_3e

    .line 866
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    invoke-virtual {v4, p3, v8}, Landroid/app/enterprise/WifiAdminProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 870
    :cond_3e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 876
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Landroid/app/enterprise/WifiAdminProfile;
    :sswitch_51
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3f

    .line 879
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 885
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 882
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_3f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_e

    .line 892
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_52
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 898
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 900
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    if-eqz v4, :cond_40

    move v7, v8

    :cond_40
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 906
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_53
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getWifiApSetting()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 908
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    if-eqz v4, :cond_41

    .line 910
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 914
    :cond_41
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 920
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_54
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_43

    move v0, v8

    .line 923
    .local v0, _arg0:Z
    :goto_f
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->allowWifiApSettingUserModification(Z)Z

    move-result v4

    .line 924
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    if-eqz v4, :cond_42

    move v7, v8

    :cond_42
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_43
    move v0, v7

    .line 922
    goto :goto_f

    .line 930
    :sswitch_55
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isWifiApSettingUserModificationAllowed()Z

    move-result v4

    .line 932
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    if-eqz v4, :cond_44

    move v7, v8

    :cond_44
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 938
    .end local v4           #_result:Z
    :sswitch_56
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_46

    move v0, v8

    .line 941
    .restart local v0       #_arg0:Z
    :goto_10
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->allowOpenWifiAp(Z)Z

    move-result v4

    .line 942
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    if-eqz v4, :cond_45

    move v7, v8

    :cond_45
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_46
    move v0, v7

    .line 940
    goto :goto_10

    .line 948
    :sswitch_57
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isOpenWifiApAllowed()Z

    move-result v4

    .line 950
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    if-eqz v4, :cond_47

    move v7, v8

    :cond_47
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 956
    .end local v4           #_result:Z
    :sswitch_58
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_49

    move v0, v8

    .line 959
    .restart local v0       #_arg0:Z
    :goto_11
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setAutomaticConnectionToWifi(Z)Z

    move-result v4

    .line 960
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    if-eqz v4, :cond_48

    move v7, v8

    :cond_48
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_49
    move v0, v7

    .line 958
    goto :goto_11

    .line 966
    :sswitch_59
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAutomaticConnectionToWifi()Z

    move-result v4

    .line 968
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    if-eqz v4, :cond_4a

    move v7, v8

    :cond_4a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 974
    .end local v4           #_result:Z
    :sswitch_5a
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 977
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->addWifiSsidToBlackList(Ljava/util/List;)Z

    move-result v4

    .line 978
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    if-eqz v4, :cond_4b

    move v7, v8

    :cond_4b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 984
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Z
    :sswitch_5b
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 987
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->removeWifiSsidFromBlackList(Ljava/util/List;)Z

    move-result v4

    .line 988
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    if-eqz v4, :cond_4c

    move v7, v8

    :cond_4c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 994
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Z
    :sswitch_5c
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->clearWifiSsidBlackList()Z

    move-result v4

    .line 996
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    if-eqz v4, :cond_4d

    move v7, v8

    :cond_4d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1002
    .end local v4           #_result:Z
    :sswitch_5d
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAllWifiSsidBlackLists()Ljava/util/List;

    move-result-object v5

    .line 1004
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1010
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    :sswitch_5e
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1013
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->addWifiSsidToWhiteList(Ljava/util/List;)Z

    move-result v4

    .line 1014
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    if-eqz v4, :cond_4e

    move v7, v8

    :cond_4e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1020
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Z
    :sswitch_5f
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1023
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->removeWifiSsidFromWhiteList(Ljava/util/List;)Z

    move-result v4

    .line 1024
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    if-eqz v4, :cond_4f

    move v7, v8

    :cond_4f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1030
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Z
    :sswitch_60
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->clearWifiSsidWhiteList()Z

    move-result v4

    .line 1032
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    if-eqz v4, :cond_50

    move v7, v8

    :cond_50
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1038
    .end local v4           #_result:Z
    :sswitch_61
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAllWifiSsidWhiteLists()Ljava/util/List;

    move-result-object v5

    .line 1040
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1046
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    :sswitch_62
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_52

    move v0, v8

    .line 1049
    .restart local v0       #_arg0:Z
    :goto_12
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->activateWifiSsidRestriction(Z)Z

    move-result v4

    .line 1050
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    if-eqz v4, :cond_51

    move v7, v8

    :cond_51
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_52
    move v0, v7

    .line 1048
    goto :goto_12

    .line 1056
    :sswitch_63
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isWifiSsidRestrictionActive()Z

    move-result v4

    .line 1058
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    if-eqz v4, :cond_53

    move v7, v8

    :cond_53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1064
    .end local v4           #_result:Z
    :sswitch_64
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_55

    move v0, v8

    .line 1067
    .restart local v0       #_arg0:Z
    :goto_13
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifiStateChangeAllowed(Z)Z

    move-result v4

    .line 1068
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    if-eqz v4, :cond_54

    move v7, v8

    :cond_54
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_55
    move v0, v7

    .line 1066
    goto :goto_13

    .line 1074
    :sswitch_65
    const-string v9, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isWifiStateChangeAllowed()Z

    move-result v4

    .line 1076
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    if-eqz v4, :cond_56

    move v7, v8

    :cond_56
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
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
