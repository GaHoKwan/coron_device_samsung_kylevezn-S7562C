.class public Lcom/sec/android/app/contacts/model/PhoneNumberInfo;
.super Ljava/lang/Object;
.source "PhoneNumberInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/contacts/model/PhoneNumberInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/sec/android/app/contacts/model/PhoneNumberInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/model/PhoneNumberInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "number"
    .parameter "type"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->number:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->type:I

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method
