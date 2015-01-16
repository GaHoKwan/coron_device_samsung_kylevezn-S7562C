.class public abstract Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;
.super Landroid/os/Binder;
.source "ILockscreenOverlay.java"

# interfaces
.implements Landroid/app/enterprise/lso/ILockscreenOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/lso/ILockscreenOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/lso/ILockscreenOverlay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.lso.ILockscreenOverlay"

.field static final TRANSACTION_canConfigure:I = 0x5

.field static final TRANSACTION_getData:I = 0x2

.field static final TRANSACTION_getPreferences:I = 0x9

.field static final TRANSACTION_isConfigured:I = 0x4

.field static final TRANSACTION_resetData:I = 0x3

.field static final TRANSACTION_resetWallpaper:I = 0x7

.field static final TRANSACTION_setData:I = 0x1

.field static final TRANSACTION_setPreferences:I = 0x8

.field static final TRANSACTION_setWallpaper:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/lso/ILockscreenOverlay;
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
    const-string v1, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/lso/ILockscreenOverlay;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Landroid/app/enterprise/lso/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/lso/LSOItemData;

    .line 59
    .local v0, _arg0:Landroid/app/enterprise/lso/LSOItemData;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->setData(Landroid/app/enterprise/lso/LSOItemData;I)I

    move-result v2

    .line 61
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Landroid/app/enterprise/lso/LSOItemData;
    .end local v1           #_arg1:I
    .end local v2           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_1

    .line 67
    .end local v0           #_arg0:Landroid/app/enterprise/lso/LSOItemData;
    :sswitch_2
    const-string v5, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->getData(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v2

    .line 71
    .local v2, _result:Landroid/app/enterprise/lso/LSOItemData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v2, p3, v4}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:I
    .end local v2           #_result:Landroid/app/enterprise/lso/LSOItemData;
    :sswitch_3
    const-string v3, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->resetData(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v5, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->isConfigured(I)Z

    move-result v2

    .line 96
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_5
    const-string v5, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->canConfigure(I)Z

    move-result v2

    .line 106
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->setWallpaper(Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_7
    const-string v3, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->resetWallpaper()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    :sswitch_8
    const-string v3, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    sget-object v3, Landroid/app/enterprise/lso/LSOAttributeSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 137
    .local v0, _arg0:Landroid/app/enterprise/lso/LSOAttributeSet;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->setPreferences(Landroid/app/enterprise/lso/LSOAttributeSet;)I

    move-result v2

    .line 138
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v2           #_result:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/enterprise/lso/LSOAttributeSet;
    goto :goto_2

    .line 144
    .end local v0           #_arg0:Landroid/app/enterprise/lso/LSOAttributeSet;
    :sswitch_9
    const-string v5, "android.app.enterprise.lso.ILockscreenOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->getPreferences()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    .line 146
    .local v2, _result:Landroid/app/enterprise/lso/LSOAttributeSet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v2, :cond_5

    .line 148
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v2, p3, v4}, Landroid/app/enterprise/lso/LSOAttributeSet;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 152
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
