.class Lcom/android/phone/LGTGlobalAutoRoaming$1;
.super Landroid/os/Handler;
.source "LGTGlobalAutoRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTGlobalAutoRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTGlobalAutoRoaming;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$1;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 73
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$1;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    #getter for: Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$000(Lcom/android/phone/LGTGlobalAutoRoaming;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$1;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    iget-object v1, v1, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming$1;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    iget-object v2, v2, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e05be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 78
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$1;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    #getter for: Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$000(Lcom/android/phone/LGTGlobalAutoRoaming;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$1;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$002(Lcom/android/phone/LGTGlobalAutoRoaming;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalAutoRoaming"

    const-string v2, " mProgressDialog dissmiss failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
