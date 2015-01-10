.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1215
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1218
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1219
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1222
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1229
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1231
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1238
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1240
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1247
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1248
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1250
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1253
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1215
    :pswitch_data_0
    .packed-switch 0x7f090173
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
