.class Lcom/android/mms/ui/MessageSmscActivityDS$2;
.super Ljava/lang/Object;
.source "MessageSmscActivityDS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/MessageSmscActivityDS$2;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS$2;->this$0:Lcom/android/mms/ui/MessageSmscActivityDS;

    #calls: Lcom/android/mms/ui/MessageSmscActivityDS;->UpdateSmsc()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageSmscActivityDS;->access$400(Lcom/android/mms/ui/MessageSmscActivityDS;)V

    .line 149
    return-void
.end method
