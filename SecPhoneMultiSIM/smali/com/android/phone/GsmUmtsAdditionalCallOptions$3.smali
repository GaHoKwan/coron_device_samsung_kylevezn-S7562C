.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->makeAreaCodeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 536
    const/4 v2, 0x0

    .line 537
    .local v2, value:I
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 538
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$900(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_enabled1"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 548
    :goto_0
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, data:Ljava/lang/String;
    move-object v1, v0

    .line 550
    .local v1, tempareaCode:Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 553
    const-string v0, ""

    .line 557
    :cond_0
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 558
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_value1"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 566
    :goto_1
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(ILjava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$800(Lcom/android/phone/GsmUmtsAdditionalCallOptions;ILjava/lang/String;)V

    .line 567
    return-void

    .line 542
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #tempareaCode:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 561
    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #tempareaCode:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_value"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
