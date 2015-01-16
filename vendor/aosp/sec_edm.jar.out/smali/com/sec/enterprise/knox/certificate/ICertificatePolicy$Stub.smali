.class public abstract Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;
.super Landroid/os/Binder;
.source "ICertificatePolicy.java"

# interfaces
.implements Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.certificate.ICertificatePolicy"

.field static final TRANSACTION_addTrustedCaCertificateList:I = 0x1

.field static final TRANSACTION_addUntrustedCaCertificateList:I = 0x7

.field static final TRANSACTION_clearTrustedCaCertificateList:I = 0x4

.field static final TRANSACTION_clearUntrustedCaCertificateList:I = 0xa

.field static final TRANSACTION_enableCertificateFailureNotification:I = 0xe

.field static final TRANSACTION_enableSignatureIdentityInformation:I = 0xb

.field static final TRANSACTION_getIdentitiesFromSignatures:I = 0xd

.field static final TRANSACTION_getTrustedCaCertificateList:I = 0x2

.field static final TRANSACTION_getUntrustedCaCertificateList:I = 0x9

.field static final TRANSACTION_isCaCertificateDisabled:I = 0x6

.field static final TRANSACTION_isCaCertificateTrusted:I = 0x3

.field static final TRANSACTION_isCertificateFailureNotificationEnabled:I = 0xf

.field static final TRANSACTION_isSignatureIdentityInformationEnabled:I = 0xc

.field static final TRANSACTION_notifyCertificateFailure:I = 0x10

.field static final TRANSACTION_removeTrustedCaCertificateList:I = 0x5

.field static final TRANSACTION_removeUntrustedCaCertificateList:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
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
    const-string v1, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v6, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    sget-object v8, Landroid/app/enterprise/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->addTrustedCaCertificateList(Ljava/util/List;)Z

    move-result v4

    .line 54
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v4           #_result:Z
    :sswitch_2
    const-string v6, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->getTrustedCaCertificateList()Ljava/util/List;

    move-result-object v5

    .line 62
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 68
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    :sswitch_3
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    .line 71
    sget-object v8, Landroid/app/enterprise/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/CertificateInfo;

    .line 77
    .local v0, _arg0:Landroid/app/enterprise/CertificateInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v2, v7

    .line 78
    .local v2, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->isCaCertificateTrusted(Landroid/app/enterprise/CertificateInfo;Z)Z

    move-result v4

    .line 79
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Landroid/app/enterprise/CertificateInfo;
    .end local v2           #_arg1:Z
    .end local v4           #_result:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/enterprise/CertificateInfo;
    goto :goto_1

    :cond_3
    move v2, v6

    .line 77
    goto :goto_2

    .line 85
    .end local v0           #_arg0:Landroid/app/enterprise/CertificateInfo;
    :sswitch_4
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->clearTrustedCaCertificateList()Z

    move-result v4

    .line 87
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v4           #_result:Z
    :sswitch_5
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    sget-object v8, Landroid/app/enterprise/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->removeTrustedCaCertificateList(Ljava/util/List;)Z

    move-result v4

    .line 97
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 103
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v4           #_result:Z
    :sswitch_6
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->isCaCertificateDisabled(Ljava/lang/String;)Z

    move-result v4

    .line 107
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_7
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    sget-object v8, Landroid/app/enterprise/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->addUntrustedCaCertificateList(Ljava/util/List;)Z

    move-result v4

    .line 117
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v4           #_result:Z
    :sswitch_8
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    sget-object v8, Landroid/app/enterprise/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 126
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->removeUntrustedCaCertificateList(Ljava/util/List;)Z

    move-result v4

    .line 127
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v4           #_result:Z
    :sswitch_9
    const-string v6, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->getUntrustedCaCertificateList()Ljava/util/List;

    move-result-object v5

    .line 135
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 141
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    :sswitch_a
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->clearUntrustedCaCertificateList()Z

    move-result v4

    .line 143
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v4           #_result:Z
    :sswitch_b
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v0, v7

    .line 152
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->enableSignatureIdentityInformation(Z)Z

    move-result v4

    .line 153
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v4, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_b
    move v0, v6

    .line 151
    goto :goto_3

    .line 159
    :sswitch_c
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v0, v7

    .line 162
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v4

    .line 163
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v4, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_d
    move v0, v6

    .line 161
    goto :goto_4

    .line 169
    :sswitch_d
    const-string v6, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    sget-object v6, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 172
    .local v0, _arg0:[Landroid/content/pm/Signature;
    invoke-virtual {p0, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v4

    .line 173
    .local v4, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 179
    .end local v0           #_arg0:[Landroid/content/pm/Signature;
    .end local v4           #_result:Ljava/util/List;
    :sswitch_e
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    move v0, v7

    .line 182
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->enableCertificateFailureNotification(Z)Z

    move-result v4

    .line 183
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v4, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_f
    move v0, v6

    .line 181
    goto :goto_5

    .line 189
    :sswitch_f
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->isCertificateFailureNotificationEnabled()Z

    move-result v4

    .line 191
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v4, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v4           #_result:Z
    :sswitch_10
    const-string v8, "com.sec.enterprise.knox.certificate.ICertificatePolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    move v3, v7

    .line 204
    .local v3, _arg2:Z
    :goto_6
    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_11
    move v3, v6

    .line 203
    goto :goto_6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
