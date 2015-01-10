.class final Lcom/android/mms/ui/MessageUtils$7;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$mapSimSlot:Ljava/util/Map;

.field final synthetic val$readReportDataMap:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;ILjava/util/Map;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2183
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$7;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$7;->val$mapSimSlot:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$7;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/mms/ui/MessageUtils$7;->val$status:I

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$7;->val$readReportDataMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2186
    new-instance v0, Lcom/android/mms/ui/MessageUtils$7$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageUtils$7$1;-><init>(Lcom/android/mms/ui/MessageUtils$7;)V

    .line 2204
    .local v0, mPositiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$7;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a04bf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a04be

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a006a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a006b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2211
    return-void
.end method
