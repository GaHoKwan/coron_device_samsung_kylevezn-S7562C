.class public Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;
.super Landroid/os/AsyncTask;
.source "SpamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreSpamTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field protected static final EXTRA_ID:Ljava/lang/String; = "msg_id"

.field protected static final EXTRA_INFO:Ljava/lang/String; = "info"

.field protected static final EXTRA_TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method protected static bundleTaskParams(JLjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v0
.end method

.method protected static bundleTaskParams(Landroid/database/Cursor;)Landroid/os/Bundle;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 221
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v4, result:Landroid/os/Bundle;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 223
    .local v1, msgId:J
    const-string v5, "transport_type"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, msgType:Ljava/lang/String;
    #calls: Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    invoke-static {p0, v3}, Lcom/android/mms/spam/SpamUtils;->access$000(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 225
    .local v0, info:Landroid/content/ContentValues;
    const-string v5, "msg_id"

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 226
    const-string v5, "type"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v5, "info"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 228
    return-object v4
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 9
    .parameter "params"

    .prologue
    .line 190
    const/4 v4, 0x1

    .line 193
    .local v4, result:Z
    move-object v1, p1

    .local v1, arr$:[Landroid/os/Bundle;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 194
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "msg_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v5, "type"

    const-string v8, ""

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "info"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    invoke-static {v6, v7, v8, v5}, Lcom/android/mms/spam/SpamUtils;->restoreSpamMessage(JLjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    and-int/2addr v4, v5

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, [Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;->doInBackground([Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isSuccess"

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a036a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00cb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
