.class public Lcom/android/mms/spam/SpamFilter$SpamFilterData;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpamFilterData"
.end annotation


# instance fields
.field private mContactName:Ljava/lang/String;

.field private mCriteria:I

.field private mEnable:Z

.field private mFilter:Ljava/lang/String;

.field private mId:I

.field private mType:I


# direct methods
.method constructor <init>(IIZLjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "type"
    .parameter "enable"
    .parameter "filter"
    .parameter "criteria"

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mId:I

    .line 752
    iput p2, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I

    .line 753
    iput-boolean p3, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    .line 754
    iput-object p4, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;

    .line 755
    iput p5, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I

    .line 756
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 741
    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/spam/SpamFilter$SpamFilterData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 741
    iput p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 741
    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I

    return v0
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getCriteria()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I

    return v0
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I

    return v0
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mContactName:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 767
    iput-boolean p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    .line 768
    return-void
.end method
