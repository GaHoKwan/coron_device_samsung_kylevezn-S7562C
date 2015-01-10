.class Lcom/android/mms/ui/MessageSmscActivityDS$TabFactory;
.super Ljava/lang/Object;
.source "MessageSmscActivityDS.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageSmscActivityDS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabFactory"
.end annotation


# instance fields
.field mctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/ui/MessageSmscActivityDS;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageSmscActivityDS;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/mms/ui/MessageSmscActivityDS$TabFactory;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/android/mms/ui/MessageSmscActivityDS$TabFactory;->mctx:Landroid/content/Context;

    .line 165
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$TabFactory;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #getter for: Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method
