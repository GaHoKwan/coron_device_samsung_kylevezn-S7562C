.class Lcom/android/mms/ui/MessageSmscActivityDS$1;
.super Ljava/lang/Object;
.source "MessageSmscActivityDS.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageSmscActivityDS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageSmscActivityDS;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageSmscActivityDS;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 112
    const-string v0, "SIM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "Mms/MessageSmscActivityDS"

    const-string v1, "setOnTabChangedListener SIM1: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$000(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v0, "SIM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "Mms/MessageSmscActivityDS"

    const-string v1, "setOnTabChangedListener SIM2: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$000(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
