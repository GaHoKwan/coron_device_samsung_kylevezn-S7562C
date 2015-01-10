.class Lcom/android/mms/ui/ComposeMessageFragment$7;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x42

    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1202
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return v5

    .line 1205
    :cond_1
    const/16 v7, 0x52

    if-ne p2, v7, :cond_2

    .line 1209
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEnterKeyInput()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1211
    if-ne p2, v8, :cond_3

    .line 1212
    const-string v5, "Mms/ComposeMessageFragment"

    const-string v7, "Enter Key is Disable Function in Messaging"

    invoke-static {v5, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 1213
    goto :goto_0

    .line 1219
    :cond_3
    const/16 v7, 0x15

    if-ne p2, v7, :cond_6

    .line 1221
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1222
    .local v2, edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1223
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1224
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1225
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    :cond_4
    :goto_1
    move v5, v6

    .line 1235
    goto :goto_0

    .line 1230
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1231
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1237
    .end local v2           #edit:Landroid/widget/EditText;
    :catch_0
    move-exception v3

    .line 1238
    .local v3, ex:Ljava/lang/ClassCastException;
    const-string v7, "Mms/ComposeMessageFragment"

    const-string v8, "key event not from EditText"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_6
    const/16 v7, 0x16

    if-ne p2, v7, :cond_9

    .line 1242
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1244
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1245
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v8

    if-ne v7, v8, :cond_9

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1246
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1247
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1255
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v7

    const/16 v8, 0x42

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->playSoundEffect(I)V

    move v5, v6

    .line 1256
    goto/16 :goto_0

    .line 1249
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1250
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1251
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1258
    .end local v2           #edit:Landroid/widget/EditText;
    :catch_1
    move-exception v3

    .line 1259
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v7, "Mms/ComposeMessageFragment"

    const-string v8, "key event not from EditText"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_9
    const/16 v7, 0x13

    if-ne p2, v7, :cond_0

    .line 1265
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isReplyAllBannerVisible()Z
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mReplyAllGroupMsgBttn:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 1270
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1271
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1272
    .local v4, layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1273
    .local v1, cursorPosition:I
    if-eq v1, v9, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    if-ge v7, v6, :cond_0

    .line 1275
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusReplyAllBanner(Z)V
    invoke-static {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move v5, v6

    .line 1276
    goto/16 :goto_0

    .line 1278
    .end local v1           #cursorPosition:I
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v4           #layout:Landroid/text/Layout;
    :catch_2
    move-exception v3

    .line 1279
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v6, "Mms/ComposeMessageFragment"

    const-string v7, "key event not from EditText"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1283
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_b
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_c

    .line 1285
    :try_start_3
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1286
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1287
    .restart local v4       #layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1288
    .restart local v1       #cursorPosition:I
    if-eq v1, v9, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    if-ge v7, v6, :cond_0

    .line 1290
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1291
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v7

    const/16 v8, 0x21

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move v5, v6

    .line 1292
    goto/16 :goto_0

    .line 1294
    .end local v1           #cursorPosition:I
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v4           #layout:Landroid/text/Layout;
    :catch_3
    move-exception v3

    .line 1295
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v6, "Mms/ComposeMessageFragment"

    const-string v7, "key event not from EditText"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1300
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_c
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 1302
    :try_start_4
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1303
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1304
    .restart local v4       #layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1306
    .restart local v1       #cursorPosition:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1309
    if-eq v1, v9, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    if-ge v7, v6, :cond_0

    .line 1311
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1312
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v7

    const/16 v8, 0x21

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move v5, v6

    .line 1313
    goto/16 :goto_0

    .line 1315
    .end local v1           #cursorPosition:I
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v4           #layout:Landroid/text/Layout;
    :catch_4
    move-exception v3

    .line 1316
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v6, "Mms/ComposeMessageFragment"

    const-string v7, "key event not from EditText"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
