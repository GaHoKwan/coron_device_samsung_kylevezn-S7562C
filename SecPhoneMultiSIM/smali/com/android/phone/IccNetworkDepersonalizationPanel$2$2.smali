.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V
    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 176
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 177
    return-void
.end method
