.class Lcom/android/mms/ui/BackgroundColorPicker$3;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$3;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #calls: Lcom/android/mms/ui/BackgroundColorPicker;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    invoke-static {v0, p3, p1, p2}, Lcom/android/mms/ui/BackgroundColorPicker;->access$000(Lcom/android/mms/ui/BackgroundColorPicker;ILandroid/widget/AdapterView;Landroid/view/View;)V

    .line 222
    return-void
.end method
