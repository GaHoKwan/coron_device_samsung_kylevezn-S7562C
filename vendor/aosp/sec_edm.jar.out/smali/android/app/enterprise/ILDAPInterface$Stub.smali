.class public abstract Landroid/app/enterprise/ILDAPInterface$Stub;
.super Landroid/os/Binder;
.source "ILDAPInterface.java"

# interfaces
.implements Landroid/app/enterprise/ILDAPInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/ILDAPInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/ILDAPInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.ILDAPInterface"

.field static final TRANSACTION_createLDAPAccount:I = 0x1

.field static final TRANSACTION_deleteLDAPAccount:I = 0x2

.field static final TRANSACTION_getAllLDAPAccounts:I = 0x4

.field static final TRANSACTION_getLDAPAccount:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.ILDAPInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILDAPInterface;
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
    const-string v1, "android.app.enterprise.ILDAPInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/ILDAPInterface;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/ILDAPInterface;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/enterprise/ILDAPInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/ILDAPInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v4, "android.app.enterprise.ILDAPInterface"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.app.enterprise.ILDAPInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Landroid/app/enterprise/LDAPAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/LDAPAccount;

    .line 59
    .local v0, _arg0:Landroid/app/enterprise/LDAPAccount;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ILDAPInterface$Stub;->createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Landroid/app/enterprise/LDAPAccount;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/enterprise/LDAPAccount;
    goto :goto_1

    .line 65
    .end local v0           #_arg0:Landroid/app/enterprise/LDAPAccount;
    :sswitch_2
    const-string v6, "android.app.enterprise.ILDAPInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 68
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ILDAPInterface$Stub;->deleteLDAPAccount(J)Z

    move-result v2

    .line 69
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:J
    .end local v2           #_result:Z
    :sswitch_3
    const-string v6, "android.app.enterprise.ILDAPInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 78
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ILDAPInterface$Stub;->getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;

    move-result-object v2

    .line 79
    .local v2, _result:Landroid/app/enterprise/LDAPAccount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v2, p3, v5}, Landroid/app/enterprise/LDAPAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:J
    .end local v2           #_result:Landroid/app/enterprise/LDAPAccount;
    :sswitch_4
    const-string v4, "android.app.enterprise.ILDAPInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/enterprise/ILDAPInterface$Stub;->getAllLDAPAccounts()Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
