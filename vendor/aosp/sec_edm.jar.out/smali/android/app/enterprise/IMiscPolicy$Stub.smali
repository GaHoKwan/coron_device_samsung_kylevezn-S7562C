.class public abstract Landroid/app/enterprise/IMiscPolicy$Stub;
.super Landroid/os/Binder;
.source "IMiscPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IMiscPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IMiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IMiscPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IMiscPolicy"

.field static final TRANSACTION_addClipboardTextData:I = 0xd

.field static final TRANSACTION_addWebBookmarkBitmap:I = 0x3

.field static final TRANSACTION_addWebBookmarkByteBuffer:I = 0x4

.field static final TRANSACTION_changeLockScreenString:I = 0x6

.field static final TRANSACTION_clearClipboardData:I = 0xc

.field static final TRANSACTION_deleteWebBookmark:I = 0x5

.field static final TRANSACTION_getClipboardTextData:I = 0xe

.field static final TRANSACTION_getCurrentLockScreenString:I = 0x7

.field static final TRANSACTION_getLastSimChangeInfo:I = 0x8

.field static final TRANSACTION_getSystemActiveFont:I = 0xa

.field static final TRANSACTION_getSystemActiveFontSize:I = 0x10

.field static final TRANSACTION_getSystemFontSizes:I = 0x11

.field static final TRANSACTION_getSystemFonts:I = 0xb

.field static final TRANSACTION_setRingerBytes:I = 0x1

.field static final TRANSACTION_setRingerFilePath:I = 0x2

.field static final TRANSACTION_setSystemActiveFont:I = 0x9

.field static final TRANSACTION_setSystemActiveFontSize:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;
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
    const-string v1, "android.app.enterprise.IMiscPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/IMiscPolicy;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/enterprise/IMiscPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IMiscPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 55
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IMiscPolicy$Stub;->setRingerBytes([BLjava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_2
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IMiscPolicy$Stub;->setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 82
    .local v0, _arg0:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 90
    .local v2, _arg2:Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/IMiscPolicy$Stub;->addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v3

    .line 91
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/graphics/Bitmap;
    .end local v3           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_1

    .line 88
    .restart local v1       #_arg1:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 97
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/graphics/Bitmap;
    :sswitch_4
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 100
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 106
    .restart local v0       #_arg0:Landroid/net/Uri;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 109
    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/IMiscPolicy$Stub;->addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z

    move-result v3

    .line 110
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 103
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:[B
    .end local v3           #_result:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_3

    .line 116
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_5
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 119
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 125
    .restart local v0       #_arg0:Landroid/net/Uri;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IMiscPolicy$Stub;->deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    .line 127
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_4

    .line 133
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_6
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->changeLockScreenString(Ljava/lang/String;)Z

    move-result v3

    .line 137
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_7
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;

    move-result-object v3

    .line 153
    .local v3, _result:Landroid/app/enterprise/SimChangeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v3, :cond_8

    .line 155
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {v3, p3, v5}, Landroid/app/enterprise/SimChangeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 159
    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v3           #_result:Landroid/app/enterprise/SimChangeInfo;
    :sswitch_9
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IMiscPolicy$Stub;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 171
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v3, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_a
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->getSystemFonts()[Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_c
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->clearClipboardData()Z

    move-result v3

    .line 195
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v3, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v3           #_result:Z
    :sswitch_d
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->addClipboardTextData(Ljava/lang/String;)Z

    move-result v3

    .line 205
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v3, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_e
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->getClipboardTextData()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 222
    .local v0, _arg0:F
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->setSystemActiveFontSize(F)Z

    move-result v3

    .line 223
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v3, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v0           #_arg0:F
    .end local v3           #_result:Z
    :sswitch_10
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->getSystemActiveFontSize()F

    move-result v3

    .line 231
    .local v3, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 237
    .end local v3           #_result:F
    :sswitch_11
    const-string v4, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->getSystemFontSizes()[F

    move-result-object v3

    .line 239
    .local v3, _result:[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
