.class final Lcom/sec/android/app/contacts/model/PhoneNumberInfo$1;
.super Ljava/lang/Object;
.source "PhoneNumberInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/PhoneNumberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/app/contacts/model/PhoneNumberInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/contacts/model/PhoneNumberInfo;
    .locals 3
    .parameter "source"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, type:I
    new-instance v2, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/PhoneNumberInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/contacts/model/PhoneNumberInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 55
    new-array v0, p1, [Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/PhoneNumberInfo$1;->newArray(I)[Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    move-result-object v0

    return-object v0
.end method
