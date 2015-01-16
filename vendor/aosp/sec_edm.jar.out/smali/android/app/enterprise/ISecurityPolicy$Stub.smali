.class public abstract Landroid/app/enterprise/ISecurityPolicy$Stub;
.super Landroid/os/Binder;
.source "ISecurityPolicy.java"

# interfaces
.implements Landroid/app/enterprise/ISecurityPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/ISecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/ISecurityPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.ISecurityPolicy"

.field static final TRANSACTION_changeCredentialStoragePassword:I = 0x16

.field static final TRANSACTION_clearInstalledCertificates:I = 0x14

.field static final TRANSACTION_formatInternalStorage:I = 0x2

.field static final TRANSACTION_formatSelective:I = 0x1

.field static final TRANSACTION_formatStorageCard:I = 0x3

.field static final TRANSACTION_getFileNamesOnDevice:I = 0xa

.field static final TRANSACTION_getFileNamesWithAttributes:I = 0xb

.field static final TRANSACTION_getFileNamesWithAttributesRecursive:I = 0xc

.field static final TRANSACTION_getInstalledCertificate:I = 0xe

.field static final TRANSACTION_getInstalledCertificateNames:I = 0x13

.field static final TRANSACTION_getInstalledCertificates:I = 0x12

.field static final TRANSACTION_getSystemCertificates:I = 0x11

.field static final TRANSACTION_installCertificate:I = 0x19

.field static final TRANSACTION_installCertificateWithType:I = 0xf

.field static final TRANSACTION_installCertificatesFromSdCard:I = 0x10

.field static final TRANSACTION_isExternalStorageEncrypted:I = 0x7

.field static final TRANSACTION_isInternalStorageEncrypted:I = 0x6

.field static final TRANSACTION_powerOffDevice:I = 0x8

.field static final TRANSACTION_readFile:I = 0xd

.field static final TRANSACTION_removeAccountsByType:I = 0x9

.field static final TRANSACTION_removeCertificate:I = 0x1a

.field static final TRANSACTION_resetCredentialStorage:I = 0x18

.field static final TRANSACTION_setCredentialStoragePassword:I = 0x15

.field static final TRANSACTION_setExternalStorageEncryption:I = 0x5

.field static final TRANSACTION_setInternalStorageEncryption:I = 0x4

.field static final TRANSACTION_unlockCredentialStorage:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;
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
    const-string v1, "android.app.enterprise.ISecurityPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/ISecurityPolicy;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/enterprise/ISecurityPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/ISecurityPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ISecurityPolicy$Stub;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_2
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v0, v7

    .line 67
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    move v1, v7

    .line 68
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ISecurityPolicy$Stub;->formatInternalStorage(ZZ)Z

    move-result v4

    .line 69
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v4, :cond_0

    move v8, v7

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_1
    move v0, v8

    .line 65
    goto :goto_1

    .restart local v0       #_arg0:Z
    :cond_2
    move v1, v8

    .line 67
    goto :goto_2

    .line 75
    .end local v0           #_arg0:Z
    :sswitch_3
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    move v0, v7

    .line 78
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->formatStorageCard(Z)Z

    move-result v4

    .line 79
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_4
    move v0, v8

    .line 77
    goto :goto_3

    .line 85
    :sswitch_4
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    move v0, v7

    .line 88
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->setInternalStorageEncryption(Z)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_5
    move v0, v8

    .line 87
    goto :goto_4

    .line 94
    :sswitch_5
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v0, v7

    .line 97
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->setExternalStorageEncryption(Z)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v8

    .line 96
    goto :goto_5

    .line 103
    :sswitch_6
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->isInternalStorageEncrypted()Z

    move-result v4

    .line 105
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v4, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v4           #_result:Z
    :sswitch_7
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->isExternalStorageEncrypted()Z

    move-result v4

    .line 113
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v4, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v4           #_result:Z
    :sswitch_8
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->powerOffDevice()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    :sswitch_9
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->removeAccountsByType(Ljava/lang/String;)Z

    move-result v4

    .line 130
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v4, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_a
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 140
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 146
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 150
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 156
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ISecurityPolicy$Stub;->getFileNamesWithAttributesRecursive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 162
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_d
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    .line 173
    sget-object v9, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 178
    .local v1, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ISecurityPolicy$Stub;->readFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 179
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v4, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v1           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_result:Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 185
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/ParcelFileDescriptor;
    :sswitch_e
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->getInstalledCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v4

    .line 189
    .local v4, _result:Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v4, :cond_d

    .line 191
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v4, p3, v7}, Landroid/app/enterprise/CertificateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 195
    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Landroid/app/enterprise/CertificateInfo;
    :sswitch_f
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 206
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ISecurityPolicy$Stub;->installCertificateWithType(Ljava/lang/String;[B)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    :sswitch_10
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->installCertificatesFromSdCard()V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 219
    :sswitch_11
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->getSystemCertificates()Ljava/util/List;

    move-result-object v5

    .line 221
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 227
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :sswitch_12
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->getInstalledCertificates()Ljava/util/List;

    move-result-object v5

    .line 229
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 235
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :sswitch_13
    const-string v8, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 239
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 245
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_14
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->clearInstalledCertificates()Z

    move-result v4

    .line 247
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v4, :cond_e

    move v8, v7

    :cond_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v4           #_result:Z
    :sswitch_15
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->setCredentialStoragePassword(Ljava/lang/String;)Z

    move-result v4

    .line 257
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v4, :cond_f

    move v8, v7

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 263
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_16
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ISecurityPolicy$Stub;->changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 269
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v4, :cond_10

    move v8, v7

    :cond_10
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 275
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_17
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->unlockCredentialStorage(Ljava/lang/String;)Z

    move-result v4

    .line 279
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v4, :cond_11

    move v8, v7

    :cond_11
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 285
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_18
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->resetCredentialStorage()Z

    move-result v4

    .line 287
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v4, :cond_12

    move v8, v7

    :cond_12
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v4           #_result:Z
    :sswitch_19
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 299
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/enterprise/ISecurityPolicy$Stub;->installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 303
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v4, :cond_13

    move v8, v7

    :cond_13
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 309
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1a
    const-string v9, "android.app.enterprise.ISecurityPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ISecurityPolicy$Stub;->removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 315
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v4, :cond_14

    move v8, v7

    :cond_14
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
