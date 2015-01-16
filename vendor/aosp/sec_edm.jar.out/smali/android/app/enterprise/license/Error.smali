.class public Landroid/app/enterprise/license/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/license/Error;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode:I

.field private errorDescription:Ljava/lang/String;

.field private httpResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/app/enterprise/license/Error$1;

    invoke-direct {v0}, Landroid/app/enterprise/license/Error$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/license/Error;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "httpResponseCode"
    .parameter "errorCode"
    .parameter "errorDescription"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/app/enterprise/license/Error;->httpResponseCode:I

    .line 63
    iput p2, p0, Landroid/app/enterprise/license/Error;->errorCode:I

    .line 64
    iput-object p3, p0, Landroid/app/enterprise/license/Error;->errorDescription:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p0, p1}, Landroid/app/enterprise/license/Error;->readFromParcel(Landroid/os/Parcel;)V

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/license/Error$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/enterprise/license/Error;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/app/enterprise/license/Error;->errorCode:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/app/enterprise/license/Error;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponseCode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/app/enterprise/license/Error;->httpResponseCode:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/license/Error;->httpResponseCode:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/license/Error;->errorCode:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/license/Error;->errorDescription:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 111
    iget v0, p0, Landroid/app/enterprise/license/Error;->httpResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/app/enterprise/license/Error;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Landroid/app/enterprise/license/Error;->errorDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void
.end method
