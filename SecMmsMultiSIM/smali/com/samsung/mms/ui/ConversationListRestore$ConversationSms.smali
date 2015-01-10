.class public Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConversationSms"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mDate:Ljava/lang/String;

.field mReadCount:I

.field mText:Ljava/lang/String;

.field mTotalCount:I

.field final synthetic this$0:Lcom/samsung/mms/ui/ConversationListRestore;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 405
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mAddress:Ljava/lang/String;

    .line 407
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mDate:Ljava/lang/String;

    .line 408
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mText:Ljava/lang/String;

    .line 409
    iput v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mReadCount:I

    .line 410
    iput v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mTotalCount:I

    .line 411
    return-void
.end method

.method public constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "address"
    .parameter "date"
    .parameter "text"
    .parameter "readCount"
    .parameter "totalCount"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mAddress:Ljava/lang/String;

    .line 399
    iput-object p3, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mDate:Ljava/lang/String;

    .line 400
    iput-object p4, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mText:Ljava/lang/String;

    .line 401
    iput p5, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mReadCount:I

    .line 402
    iput p6, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mTotalCount:I

    .line 403
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReadCount()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mReadCount:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mTotalCount:I

    return v0
.end method
