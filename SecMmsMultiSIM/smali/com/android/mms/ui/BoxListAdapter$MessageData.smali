.class Lcom/android/mms/ui/BoxListAdapter$MessageData;
.super Ljava/lang/Object;
.source "BoxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageData"
.end annotation


# instance fields
.field private mId:J

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "type"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->this$0:Lcom/android/mms/ui/BoxListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-wide p2, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    .line 166
    iput-object p4, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public equals(JLjava/lang/String;)Z
    .locals 2
    .parameter "id"
    .parameter "type"

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 171
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 173
    .local v0, data:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    iget-wide v1, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    iget-wide v3, v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 177
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setData(JLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "type"

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    .line 190
    iput-object p3, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    .line 191
    return-void
.end method
