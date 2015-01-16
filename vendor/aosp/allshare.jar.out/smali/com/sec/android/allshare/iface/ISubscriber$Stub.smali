.class public abstract Lcom/sec/android/allshare/iface/ISubscriber$Stub;
.super Landroid/os/Binder;
.source "ISubscriber.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/ISubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/iface/ISubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/iface/ISubscriber$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.allshare.iface.ISubscriber"

.field static final TRANSACTION_getServiceVersion:I = 0x5

.field static final TRANSACTION_requestCVAsync:I = 0x1

.field static final TRANSACTION_requestCVSync:I = 0x2

.field static final TRANSACTION_subscribeEvent:I = 0x3

.field static final TRANSACTION_unsubscribeEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.sec.android.allshare.iface.ISubscriber"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/iface/ISubscriber;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.sec.android.allshare.iface.ISubscriber"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/allshare/iface/ISubscriber;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/sec/android/allshare/iface/ISubscriber;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/ISubscriber$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/allshare/iface/ISubscriber$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v3, "com.sec.android.allshare.iface.ISubscriber"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.sec.android.allshare.iface.ISubscriber"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    sget-object v5, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/iface/CVMessage;

    .line 62
    .local v1, _arg1:Lcom/sec/android/allshare/iface/CVMessage;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->requestCVAsync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v2

    .line 63
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v1           #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2           #_result:Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    goto :goto_1

    .line 69
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    :sswitch_2
    const-string v5, "com.sec.android.allshare.iface.ISubscriber"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    sget-object v5, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/iface/CVMessage;

    .line 79
    .restart local v1       #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->requestCVSync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v2

    .line 80
    .local v2, _result:Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v2, p3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    .end local v1           #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2           #_result:Lcom/sec/android/allshare/iface/CVMessage;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    goto :goto_2

    .line 86
    .restart local v2       #_result:Lcom/sec/android/allshare/iface/CVMessage;
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2           #_result:Lcom/sec/android/allshare/iface/CVMessage;
    :sswitch_3
    const-string v5, "com.sec.android.allshare.iface.ISubscriber"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 97
    sget-object v5, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/iface/CVMessage;

    .line 102
    .restart local v1       #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->subscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v2

    .line 103
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v1           #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2           #_result:Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    goto :goto_3

    .line 109
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    :sswitch_4
    const-string v3, "com.sec.android.allshare.iface.ISubscriber"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    sget-object v3, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/iface/CVMessage;

    .line 119
    .restart local v1       #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v1           #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    goto :goto_4

    .line 125
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/sec/android/allshare/iface/CVMessage;
    :sswitch_5
    const-string v3, "com.sec.android.allshare.iface.ISubscriber"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
