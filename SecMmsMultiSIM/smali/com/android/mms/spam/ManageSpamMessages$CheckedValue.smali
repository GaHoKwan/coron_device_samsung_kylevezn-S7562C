.class Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/ManageSpamMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckedValue"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private date:J

.field private id:J

.field private mMsgId:J

.field private mRead:Z

.field private msgType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;

.field private typeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "typeStr"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->address:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->body:Ljava/lang/String;

    .line 151
    iput-wide v1, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->date:J

    .line 152
    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->msgType:Ljava/lang/String;

    .line 153
    iput-wide v1, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->mMsgId:J

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->mRead:Z

    .line 158
    iput-wide p2, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->id:J

    .line 159
    iput-object p4, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->typeStr:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;JLjava/lang/String;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "id"
    .parameter "typeStr"
    .parameter "cursor"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 162
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->address:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->body:Ljava/lang/String;

    .line 151
    iput-wide v4, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->date:J

    .line 152
    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->msgType:Ljava/lang/String;

    .line 153
    iput-wide v4, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->mMsgId:J

    .line 154
    iput-boolean v2, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->mRead:Z

    .line 163
    iput-wide p2, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->id:J

    .line 164
    iput-object p4, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->typeStr:Ljava/lang/String;

    .line 166
    const-string v0, "address"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->address:Ljava/lang/String;

    .line 167
    const-string v0, "body"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->body:Ljava/lang/String;

    .line 168
    const-string v0, "date"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->date:J

    .line 169
    const-string v0, "transport_type"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->msgType:Ljava/lang/String;

    .line 172
    const-string v0, "read"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iput-boolean v2, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->mRead:Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v0, "read"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 175
    iput-boolean v3, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->mRead:Z

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->date:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->id:J

    return-wide v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->mRead:Z

    return v0
.end method

.method public getTypeStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->typeStr:Ljava/lang/String;

    return-object v0
.end method
