.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberItem"
.end annotation


# instance fields
.field private mContactId:I

.field private mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "number"

    .prologue
    .line 5862
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5863
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->type:I

    .line 5864
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->mNumber:Ljava/lang/String;

    .line 5865
    return-void
.end method


# virtual methods
.method public getContactID()I
    .locals 1

    .prologue
    .line 5876
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->mContactId:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5872
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 5868
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->type:I

    return v0
.end method
