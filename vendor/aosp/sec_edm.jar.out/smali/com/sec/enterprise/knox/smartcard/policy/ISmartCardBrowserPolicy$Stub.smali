.class public abstract Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;
.super Landroid/os/Binder;
.source "ISmartCardBrowserPolicy.java"

# interfaces
.implements Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

.field static final TRANSACTION_addUrlsToCredentialsExceptionList:I = 0x5

.field static final TRANSACTION_addUrlsToCredentialsRequiredList:I = 0x1

.field static final TRANSACTION_clearUrlsFromCredentialsExceptionList:I = 0x7

.field static final TRANSACTION_clearUrlsFromCredentialsRequiredList:I = 0x3

.field static final TRANSACTION_getUrlsCredentialsExceptionLists:I = 0x8

.field static final TRANSACTION_getUrlsCredentialsRequiredLists:I = 0x4

.field static final TRANSACTION_isAuthenticationEnabled:I = 0xa

.field static final TRANSACTION_isCredentialRequired:I = 0x9

.field static final TRANSACTION_removeUrlsFromCredentialsExceptionList:I = 0x6

.field static final TRANSACTION_removeUrlsFromCredentialsRequiredList:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;
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
    const-string v1, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v4, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->addUrlsToCredentialsRequiredList(Ljava/util/List;)Z

    move-result v2

    .line 55
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_2
    const-string v6, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 64
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->removeUrlsFromCredentialsRequiredList(Ljava/util/List;)Z

    move-result v2

    .line 65
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_3
    const-string v6, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->clearUrlsFromCredentialsRequiredList()Z

    move-result v2

    .line 73
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v2           #_result:Z
    :sswitch_4
    const-string v4, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->getUrlsCredentialsRequiredLists()Ljava/util/List;

    move-result-object v3

    .line 81
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 87
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;>;"
    :sswitch_5
    const-string v6, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->addUrlsToCredentialsExceptionList(Ljava/util/List;)Z

    move-result v2

    .line 91
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_6
    const-string v6, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 100
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->removeUrlsFromCredentialsExceptionList(Ljava/util/List;)Z

    move-result v2

    .line 101
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_7
    const-string v6, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->clearUrlsFromCredentialsExceptionList()Z

    move-result v2

    .line 109
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v2           #_result:Z
    :sswitch_8
    const-string v4, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->getUrlsCredentialsExceptionLists()Ljava/util/List;

    move-result-object v3

    .line 117
    .restart local v3       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 123
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;>;"
    :sswitch_9
    const-string v6, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->isCredentialRequired(Ljava/lang/String;)Z

    move-result v2

    .line 127
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_a
    const-string v6, "com.sec.enterprise.knox.smartcard.policy.ISmartCardBrowserPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->isAuthenticationEnabled()Z

    move-result v2

    .line 135
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

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
