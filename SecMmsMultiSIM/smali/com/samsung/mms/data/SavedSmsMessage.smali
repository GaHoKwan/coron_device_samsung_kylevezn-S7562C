.class public Lcom/samsung/mms/data/SavedSmsMessage;
.super Ljava/lang/Object;
.source "SavedSmsMessage.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mDate:J

.field private mId:J

.field private mLocked:I

.field private mRead:I

.field private mTotalCount:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v2, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mId:J

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mAddress:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mBody:Ljava/lang/String;

    .line 18
    iput-wide v2, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mDate:J

    .line 19
    iput v1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mRead:I

    .line 20
    iput v1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mType:I

    .line 21
    iput v1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mLocked:I

    .line 22
    iput v1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mTotalCount:I

    .line 23
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JIIII)V
    .locals 0
    .parameter "id"
    .parameter "address"
    .parameter "body"
    .parameter "date"
    .parameter "read"
    .parameter "type"
    .parameter "locked"
    .parameter "totalCount"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mId:J

    .line 27
    iput-object p3, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mAddress:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mBody:Ljava/lang/String;

    .line 29
    iput-wide p5, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mDate:J

    .line 30
    iput p7, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mRead:I

    .line 31
    iput p8, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mType:I

    .line 32
    iput p9, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mLocked:I

    .line 33
    iput p10, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mTotalCount:I

    .line 34
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mDate:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mId:J

    return-wide v0
.end method

.method public getLocked()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mLocked:I

    return v0
.end method

.method public getRead()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mRead:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mTotalCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mType:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mAddress:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mBody:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mDate:J

    .line 83
    return-void
.end method

.method public setID(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mId:J

    .line 71
    return-void
.end method

.method public setLocked(I)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 94
    iput p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mLocked:I

    .line 95
    return-void
.end method

.method public setRead(I)V
    .locals 0
    .parameter "read"

    .prologue
    .line 86
    iput p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mRead:I

    .line 87
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .parameter "totalCount"

    .prologue
    .line 98
    iput p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mTotalCount:I

    .line 99
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 90
    iput p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mType:I

    .line 91
    return-void
.end method
