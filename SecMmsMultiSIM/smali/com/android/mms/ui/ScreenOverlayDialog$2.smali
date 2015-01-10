.class Lcom/android/mms/ui/ScreenOverlayDialog$2;
.super Ljava/lang/Object;
.source "ScreenOverlayDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ScreenOverlayDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ScreenOverlayDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ScreenOverlayDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mms/ui/ScreenOverlayDialog$2;->this$0:Lcom/android/mms/ui/ScreenOverlayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "isChecked"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/ScreenOverlayDialog$2;->this$0:Lcom/android/mms/ui/ScreenOverlayDialog;

    #getter for: Lcom/android/mms/ui/ScreenOverlayDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ScreenOverlayDialog;->access$000(Lcom/android/mms/ui/ScreenOverlayDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "OverlayComposeDialogOnOff"

    invoke-static {v0, v1, p2}, Lcom/android/mms/ui/MessageUtils;->setCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method
