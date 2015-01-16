.class public abstract Landroid/app/enterprise/IFirewallPolicy$Stub;
.super Landroid/os/Binder;
.source "IFirewallPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IFirewallPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IFirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IFirewallPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IFirewallPolicy"

.field static final TRANSACTION_addRules:I = 0x1

.field static final TRANSACTION_cleanAllRules:I = 0x8

.field static final TRANSACTION_cleanProxyRules:I = 0x7

.field static final TRANSACTION_cleanRules:I = 0x6

.field static final TRANSACTION_enableProxy:I = 0xb

.field static final TRANSACTION_enableProxyWithUid:I = 0xc

.field static final TRANSACTION_enableRules:I = 0x9

.field static final TRANSACTION_enableRulesWithUid:I = 0xa

.field static final TRANSACTION_getAllRulesForUid:I = 0xf

.field static final TRANSACTION_getNetworkForMarket:I = 0x1b

.field static final TRANSACTION_getRules:I = 0x3

.field static final TRANSACTION_getURLFilterEnabled:I = 0x12

.field static final TRANSACTION_getURLFilterList:I = 0x14

.field static final TRANSACTION_getURLFilterReport:I = 0x18

.field static final TRANSACTION_getURLFilterReportEnabled:I = 0x17

.field static final TRANSACTION_isEnabledProxy:I = 0xd

.field static final TRANSACTION_isEnabledRules:I = 0xe

.field static final TRANSACTION_isUrlBlocked:I = 0x15

.field static final TRANSACTION_listIptablesRules:I = 0x19

.field static final TRANSACTION_removeAdmin:I = 0x10

.field static final TRANSACTION_removeRules:I = 0x2

.field static final TRANSACTION_setNetworkForMarket:I = 0x1a

.field static final TRANSACTION_setProxyRules:I = 0x5

.field static final TRANSACTION_setRules:I = 0x4

.field static final TRANSACTION_setURLFilterEnabled:I = 0x11

.field static final TRANSACTION_setURLFilterList:I = 0x13

.field static final TRANSACTION_setURLFilterReportEnabled:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;
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
    const-string v1, "android.app.enterprise.IFirewallPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IFirewallPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IFirewallPolicy;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/IFirewallPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IFirewallPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 319
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/enterprise/IFirewallPolicy$Stub;->addRules(Ljava/util/List;I)Z

    move-result v3

    .line 56
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_2
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/enterprise/IFirewallPolicy$Stub;->removeRules(Ljava/util/List;I)Z

    move-result v3

    .line 68
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_3
    const-string v5, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->getRules(I)Ljava/util/List;

    move-result-object v4

    .line 78
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 88
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/enterprise/IFirewallPolicy$Stub;->setRules(Ljava/util/List;I)Z

    move-result v3

    .line 90
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_5
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IFirewallPolicy$Stub;->setProxyRules(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 102
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_6
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->cleanRules(I)Z

    move-result v3

    .line 112
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_7
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->cleanProxyRules(I)Z

    move-result v3

    .line 122
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_8
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->cleanAllRules()Z

    move-result v3

    .line 130
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v3           #_result:Z
    :sswitch_9
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    move v0, v6

    .line 139
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->enableRules(Z)Z

    move-result v3

    .line 140
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_8
    move v0, v5

    .line 138
    goto :goto_1

    .line 146
    :sswitch_a
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    move v0, v6

    .line 150
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IFirewallPolicy$Stub;->enableRulesWithUid(ZI)Z

    move-result v3

    .line 152
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v3           #_result:Z
    :cond_a
    move v0, v5

    .line 148
    goto :goto_2

    .line 158
    :sswitch_b
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    move v0, v6

    .line 161
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->enableProxy(Z)Z

    move-result v3

    .line 162
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_c
    move v0, v5

    .line 160
    goto :goto_3

    .line 168
    :sswitch_c
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    move v0, v6

    .line 172
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IFirewallPolicy$Stub;->enableProxyWithUid(ZI)Z

    move-result v3

    .line 174
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v3, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v3           #_result:Z
    :cond_e
    move v0, v5

    .line 170
    goto :goto_4

    .line 180
    :sswitch_d
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->isEnabledProxy()Z

    move-result v3

    .line 182
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v3, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 188
    .end local v3           #_result:Z
    :sswitch_e
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->isEnabledRules()Z

    move-result v3

    .line 190
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v3, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v3           #_result:Z
    :sswitch_f
    const-string v5, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->getAllRulesForUid()Ljava/util/List;

    move-result-object v4

    .line 198
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 204
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_10
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->removeAdmin(I)Z

    move-result v3

    .line 208
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v3, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_11
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    move v0, v6

    .line 217
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->setURLFilterEnabled(Z)Z

    move-result v3

    .line 218
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v3, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_13
    move v0, v5

    .line 216
    goto :goto_5

    .line 224
    :sswitch_12
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    move v0, v6

    .line 227
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->getURLFilterEnabled(Z)Z

    move-result v3

    .line 228
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v3, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_15
    move v0, v5

    .line 226
    goto :goto_6

    .line 234
    :sswitch_13
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 237
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IFirewallPolicy$Stub;->setURLFilterList(Ljava/util/List;)Z

    move-result v3

    .line 238
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v3, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_14
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    move v0, v6

    .line 247
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->getURLFilterList(Z)Ljava/util/List;

    move-result-object v4

    .line 248
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    move v0, v5

    .line 246
    goto :goto_7

    .line 254
    :sswitch_15
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v3

    .line 258
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v3, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_16
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a

    move v0, v6

    .line 267
    .local v0, _arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->setURLFilterReportEnabled(Z)Z

    move-result v3

    .line 268
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v3, :cond_19

    move v5, v6

    :cond_19
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_1a
    move v0, v5

    .line 266
    goto :goto_8

    .line 274
    :sswitch_17
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1c

    move v0, v6

    .line 277
    .restart local v0       #_arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->getURLFilterReportEnabled(Z)Z

    move-result v3

    .line 278
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v3, :cond_1b

    move v5, v6

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_1c
    move v0, v5

    .line 276
    goto :goto_9

    .line 284
    :sswitch_18
    const-string v5, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->getURLFilterReport()Ljava/util/List;

    move-result-object v4

    .line 286
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 292
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_19
    const-string v5, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->listIptablesRules()Ljava/util/List;

    move-result-object v4

    .line 294
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 300
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1a
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 303
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->setNetworkForMarket(I)Z

    move-result v3

    .line 304
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v3, :cond_1d

    move v5, v6

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 310
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_1b
    const-string v7, "android.app.enterprise.IFirewallPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1e

    move v0, v6

    .line 313
    .local v0, _arg0:Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->getNetworkForMarket(Z)I

    move-result v3

    .line 314
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:I
    :cond_1e
    move v0, v5

    .line 312
    goto :goto_a

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
