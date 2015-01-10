.class Lcom/android/mms/ui/BoxListFrame$10;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1184
    move-object v9, p3

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1185
    .local v9, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    if-ltz v0, :cond_0

    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    iget v1, v9, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    .line 1190
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-gez v0, :cond_3

    .line 1191
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreateContextMenu Bad cursor."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1195
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1196
    .local v10, msgType:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1198
    .local v4, msgId:J
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v0, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1199
    sput-object p1, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    .line 1201
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v0, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1203
    const-string v0, "sms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1204
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1602(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1205
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1600(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "sms"

    #calls: Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/mms/ui/BoxListFrame;->access$1800(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 1206
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    const-string v6, "sms"

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v11, v0}, Lcom/android/mms/ui/BoxListFrame;->access$1902(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;

    .line 1207
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1209
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1900(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 1219
    :cond_5
    :goto_1
    const v0, 0x7f0a0028

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 1211
    :cond_6
    const-string v0, "mms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1212
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1602(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1213
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1600(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "mms"

    #calls: Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/mms/ui/BoxListFrame;->access$1800(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 1214
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    const-string v6, "mms"

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v11, v0}, Lcom/android/mms/ui/BoxListFrame;->access$1902(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;

    .line 1215
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1217
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1900(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_1

    .line 1224
    :cond_7
    const v0, 0x7f0a0028

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1228
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v0, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 1229
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-string v1, "content://mms-sms/wap-push-messages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1602(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1230
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1600(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "wpm"

    #calls: Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/mms/ui/BoxListFrame;->access$2000(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 1232
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    const-string v6, "wpm"

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v11, v0}, Lcom/android/mms/ui/BoxListFrame;->access$1902(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;

    .line 1233
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1234
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1900(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 1239
    :cond_8
    const-string v0, "sms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1240
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1602(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1241
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1600(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "sms"

    #calls: Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/mms/ui/BoxListFrame;->access$1800(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 1242
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v0, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1243
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 1244
    :cond_9
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    const-string v6, "sms"

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v11, v0}, Lcom/android/mms/ui/BoxListFrame;->access$1902(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;

    .line 1245
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1900(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 1246
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #calls: Lcom/android/mms/ui/BoxListFrame;->addVIPModeListMenu(Landroid/view/ContextMenu;J)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;Landroid/view/ContextMenu;J)V

    goto/16 :goto_0

    .line 1250
    :cond_a
    const-string v0, "mms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1602(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1252
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1600(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "mms"

    #calls: Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/mms/ui/BoxListFrame;->access$1800(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 1253
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v0, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1254
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 1255
    :cond_b
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    const-string v6, "mms"

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v11, v0}, Lcom/android/mms/ui/BoxListFrame;->access$1902(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;

    .line 1256
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1900(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 1257
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$10;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #calls: Lcom/android/mms/ui/BoxListFrame;->addVIPModeListMenu(Landroid/view/ContextMenu;J)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;Landroid/view/ContextMenu;J)V

    goto/16 :goto_0
.end method
