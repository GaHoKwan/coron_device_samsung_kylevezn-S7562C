.class Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PresetImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    .line 340
    const-string v3, "rearrange_preset_image_setting"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    if-le p2, v4, :cond_0

    const/4 p2, 0x1

    .line 344
    :cond_0
    if-nez p2, :cond_1

    .line 346
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$500(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 347
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v4, 0x32

    invoke-virtual {v3, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 367
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 348
    :cond_1
    if-ne p2, v4, :cond_2

    .line 350
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$600(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 351
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v4, 0x34

    invoke-virtual {v3, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 352
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$700(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 355
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v4, 0x33

    invoke-virtual {v3, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 358
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$800(Lcom/android/phone/callsettings/PresetImage;)J

    move-result-wide v1

    .line 360
    .local v1, sizeLimit:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 361
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;
    invoke-static {v3, v1, v2}, Lcom/android/phone/callsettings/PresetImage;->access$900(Lcom/android/phone/callsettings/PresetImage;J)Landroid/content/Intent;

    move-result-object v0

    .line 362
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v4, 0x35

    invoke-virtual {v3, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 364
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const v5, 0x7f0e02aa

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method
