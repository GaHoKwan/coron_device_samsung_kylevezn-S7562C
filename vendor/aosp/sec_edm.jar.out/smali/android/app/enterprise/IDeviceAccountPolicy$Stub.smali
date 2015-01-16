.class public abstract Landroid/app/enterprise/IDeviceAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IDeviceAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IDeviceAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IDeviceAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IDeviceAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IDeviceAccountPolicy"

.field static final TRANSACTION_addAccountsToRemovalBlackList:I = 0x1

.field static final TRANSACTION_addAccountsToRemovalWhiteList:I = 0x5

.field static final TRANSACTION_clearAccountsFromRemovalBlackList:I = 0x4

.field static final TRANSACTION_clearAccountsFromRemovalWhiteList:I = 0x8

.field static final TRANSACTION_getAccountsFromRemovalBlackLists:I = 0x3

.field static final TRANSACTION_getAccountsFromRemovalWhiteLists:I = 0x7

.field static final TRANSACTION_getSupportedAccountTypes:I = 0x9

.field static final TRANSACTION_isAccountRemovalAllowed:I = 0xa

.field static final TRANSACTION_removeAccountsFromRemovalBlackList:I = 0x2

.field static final TRANSACTION_removeAccountsFromRemovalWhiteList:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceAccountPolicy;
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
    const-string v1, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IDeviceAccountPolicy;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/IDeviceAccountPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v7, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v9, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 55
    .local v2, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->addAccountsToRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    .line 56
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v4, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Z
    :sswitch_2
    const-string v9, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 67
    .restart local v2       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->removeAccountsFromRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    .line 68
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v4, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Z
    :sswitch_3
    const-string v7, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->getAccountsFromRemovalBlackLists(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AccountControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AccountControlInfo;>;"
    :sswitch_4
    const-string v9, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->clearAccountsFromRemovalBlackList(Ljava/lang/String;)Z

    move-result v4

    .line 88
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v4, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_5
    const-string v9, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 99
    .restart local v2       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    .line 100
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v4, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 106
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Z
    :sswitch_6
    const-string v9, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 111
    .restart local v2       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->removeAccountsFromRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    .line 112
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v4, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Z
    :sswitch_7
    const-string v7, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->getAccountsFromRemovalWhiteLists(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 122
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AccountControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 128
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AccountControlInfo;>;"
    :sswitch_8
    const-string v9, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->clearAccountsFromRemovalWhiteList(Ljava/lang/String;)Z

    move-result v4

    .line 132
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v4, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_9
    const-string v7, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v6

    .line 140
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 146
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string v9, "android.app.enterprise.IDeviceAccountPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v3, v8

    .line 153
    .local v3, _arg2:Z
    :goto_1
    invoke-virtual {p0, v0, v1, v3}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 154
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    .end local v4           #_result:Z
    :cond_7
    move v3, v7

    .line 152
    goto :goto_1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
