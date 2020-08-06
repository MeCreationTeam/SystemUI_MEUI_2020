.class Lcom/b16h22/statusbar/SystemVolumeSlider$2;
.super Ljava/lang/Object;
.source "SystemVolumeSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b16h22/statusbar/SystemVolumeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b16h22/statusbar/SystemVolumeSlider;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$volControl:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/SystemVolumeSlider;Landroid/widget/SeekBar;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$2;->this$0:Lcom/b16h22/statusbar/SystemVolumeSlider;

    iput-object p2, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$2;->val$volControl:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$2;->val$volControl:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$2;->val$context:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isChecked2"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$2;->val$volControl:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$2;->val$context:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isChecked2"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
