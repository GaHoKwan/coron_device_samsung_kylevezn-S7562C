.class public abstract Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;
.super Landroid/os/Binder;
.source "IApplicationPermissionControlPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IApplicationPermissionControlPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IApplicationPermissionControlPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IApplicationPermissionControlPolicy"

.field static final TRANSACTION_addPackagesToPermissionBlackList:I = 0x1

.field static final TRANSACTION_addPackagesToPermissionWhiteList:I = 0x5

.field static final TRANSACTION_clearPackagesFromPermissionBlackList:I = 0x4

.field static final TRANSACTION_clearPackagesFromPermissionWhiteList:I = 0x8

.field static final TRANSACTION_getApplicationGrantedPermissions:I = 0xa

.field static final TRANSACTION_getPackagesFromPermissionBlackList:I = 0x3

.field static final TRANSACTION_getPackagesFromPermissionWhiteList:I = 0x7

.field static final TRANSACTION_getPermissionBlockedList:I = 0x9

.field static final TRANSACTION_removePackagesFromPermissionBlackList:I = 0x2

.field static final TRANSACTION_removePackagesFromPermissionWhiteList:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPermissionControlPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 46
    :sswitch_0
    const-string v5, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v7, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    .local v1, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->addPackagesToPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    .line 57
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_2
    const-string v7, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .restart local v1       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->removePackagesFromPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    .line 69
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_3
    const-string v5, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->getPackagesFromPermissionBlackList()Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 83
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    :sswitch_4
    const-string v7, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->clearPackagesFromPermissionBlackList()Z

    move-result v2

    .line 85
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v2, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v2           #_result:Z
    :sswitch_5
    const-string v7, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .restart local v1       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->addPackagesToPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    .line 97
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_6
    const-string v7, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 108
    .restart local v1       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->removePackagesFromPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    .line 109
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v2, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_7
    const-string v5, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->getPackagesFromPermissionWhiteList()Ljava/util/List;

    move-result-object v3

    .line 117
    .restart local v3       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 123
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    :sswitch_8
    const-string v7, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->clearPackagesFromPermissionWhiteList()Z

    move-result v2

    .line 125
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v2, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v2           #_result:Z
    :sswitch_9
    const-string v5, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 136
    .restart local v1       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->getPermissionBlockedList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 137
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 143
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string v5, "android.app.enterprise.IApplicationPermissionControlPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->getApplicationGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 147
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
