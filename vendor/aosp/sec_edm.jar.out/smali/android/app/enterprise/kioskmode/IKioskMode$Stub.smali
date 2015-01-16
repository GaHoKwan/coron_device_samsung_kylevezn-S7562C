.class public abstract Landroid/app/enterprise/kioskmode/IKioskMode$Stub;
.super Landroid/os/Binder;
.source "IKioskMode.java"

# interfaces
.implements Landroid/app/enterprise/kioskmode/IKioskMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/kioskmode/IKioskMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/kioskmode/IKioskMode$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.kioskmode.IKioskMode"

.field static final TRANSACTION_allowHardwareKeys:I = 0xb

.field static final TRANSACTION_allowTaskManager:I = 0x8

.field static final TRANSACTION_disableKioskMode:I = 0x2

.field static final TRANSACTION_enableKioskMode:I = 0x1

.field static final TRANSACTION_getAllBlockedHardwareKeys:I = 0xd

.field static final TRANSACTION_getHardwareKeyList:I = 0xa

.field static final TRANSACTION_getKioskHomePackage:I = 0x4

.field static final TRANSACTION_hideNavigationBar:I = 0x10

.field static final TRANSACTION_hideStatusBar:I = 0xe

.field static final TRANSACTION_hideSystemBar:I = 0x5

.field static final TRANSACTION_isHardwareKeyAllowed:I = 0xc

.field static final TRANSACTION_isKioskModeEnabled:I = 0x3

.field static final TRANSACTION_isNavigationBarHidden:I = 0x11

.field static final TRANSACTION_isStatusBarHidden:I = 0xf

.field static final TRANSACTION_isSystemBarHidden:I = 0x6

.field static final TRANSACTION_isTaskManagerAllowed:I = 0x9

.field static final TRANSACTION_wipeRecentTasks:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;
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
    const-string v1, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/kioskmode/IKioskMode;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/enterprise/kioskmode/IKioskMode$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v3, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->enableKioskMode(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v3, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->disableKioskMode()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->isKioskModeEnabled()Z

    move-result v2

    .line 69
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v2           #_result:Z
    :sswitch_4
    const-string v3, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 86
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->hideSystemBar(Z)Z

    move-result v2

    .line 87
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_2
    move v0, v3

    .line 85
    goto :goto_1

    .line 93
    :sswitch_6
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->isSystemBarHidden()Z

    move-result v2

    .line 95
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v2           #_result:Z
    :sswitch_7
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->wipeRecentTasks()Z

    move-result v2

    .line 103
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v2           #_result:Z
    :sswitch_8
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v0, v4

    .line 112
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->allowTaskManager(Z)Z

    move-result v2

    .line 113
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_6
    move v0, v3

    .line 111
    goto :goto_2

    .line 119
    :sswitch_9
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v0, v4

    .line 122
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->isTaskManagerAllowed(Z)Z

    move-result v2

    .line 123
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_8
    move v0, v3

    .line 121
    goto :goto_3

    .line 129
    :sswitch_a
    const-string v3, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->getHardwareKeyList()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 137
    .end local v2           #_result:Ljava/util/List;
    :sswitch_b
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 141
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v1, v4

    .line 142
    .local v1, _arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->allowHardwareKeys([IZ)[I

    move-result-object v2

    .line 143
    .local v2, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_result:[I
    :cond_9
    move v1, v3

    .line 141
    goto :goto_4

    .line 149
    .end local v0           #_arg0:[I
    :sswitch_c
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    move v1, v4

    .line 154
    .restart local v1       #_arg1:Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->isHardwareKeyAllowed(IZ)Z

    move-result v2

    .line 155
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_b
    move v1, v3

    .line 153
    goto :goto_5

    .line 161
    .end local v0           #_arg0:I
    :sswitch_d
    const-string v3, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->getAllBlockedHardwareKeys()Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 169
    .end local v2           #_result:Ljava/util/List;
    :sswitch_e
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    move v0, v4

    .line 172
    .local v0, _arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->hideStatusBar(Z)Z

    move-result v2

    .line 173
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_d
    move v0, v3

    .line 171
    goto :goto_6

    .line 179
    :sswitch_f
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->isStatusBarHidden()Z

    move-result v2

    .line 181
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v2, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v2           #_result:Z
    :sswitch_10
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    move v0, v4

    .line 190
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->hideNavigationBar(Z)Z

    move-result v2

    .line 191
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v2, :cond_f

    move v3, v4

    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_10
    move v0, v3

    .line 189
    goto :goto_7

    .line 197
    :sswitch_11
    const-string v5, "android.app.enterprise.kioskmode.IKioskMode"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->isNavigationBarHidden()Z

    move-result v2

    .line 199
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v2, :cond_11

    move v3, v4

    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
