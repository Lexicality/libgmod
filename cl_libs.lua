-- TODO: These need arguments and EmmyLua annotations

menubar = {}
function menubar.Init() end
function menubar.ParentTo(p1) end
function menubar.IsParent(p1) end

weapons = {}
function weapons.IsBasedOn(p1, p2) end
function weapons.GetList() end
function weapons.GetStored(p1) end
function weapons.OnLoaded() end
function weapons.Register(p1, p2) end
function weapons.Get(p1, p2) end

player_manager = {}
function player_manager.SetPlayerClass(p1, p2) end
function player_manager.OnPlayerSpawn(p1, p2) end
function player_manager.AddValidModel(p1, p2) end
function player_manager.TranslatePlayerHands(p1) end
function player_manager.RunClass(...) end
function player_manager.TranslateToPlayerModelName(p1) end
function player_manager.AddValidHands(p1, p2, p3, p4) end
function player_manager.GetPlayerClass(p1) end
function player_manager.AllValidModels() end
function player_manager.ClearPlayerClass(p1) end
function player_manager.TranslatePlayerModel(p1) end
function player_manager.RegisterClass(p1, p2, p3) end

constraint = {}

list = {}
function list.Contains(p1, p2) end
function list.HasEntry(p1, p2) end
function list.Set(p1, p2, p3) end
function list.Add(p1, p2) end
function list.GetForEdit(p1) end
function list.Get(p1) end

halo = {}
function halo.Render(p1) end
function halo.Add(p1, p2, p3, p4, p5, p6, p7) end
function halo.RenderedEntity() end

hook = {}
function hook.Run(...) end
function hook.Remove(p1, p2) end
function hook.Call(...) end
function hook.GetTable() end
function hook.Add(p1, p2, p3) end

gameevent = {}
function gameevent.Listen(...) end

game = {}
function game.GetAmmoDamageType(...) end
function game.GetAmmoData(...) end
function game.GetAmmoForce(...) end
function game.IsDedicated(...) end
function game.SinglePlayer(...) end
function game.GetAmmoName(...) end
function game.GetAmmoPlayerDamage(...) end
function game.GetAmmoMax(...) end
function game.GetWorld(...) end
function game.GetAmmoNPCDamage(...) end
function game.BuildAmmoTypes() end
function game.GetSkillLevel(...) end
function game.RemoveRagdolls(...) end
function game.GetAmmoTypes(...) end
function game.MaxPlayers(...) end
function game.MountGMA(...) end
function game.GetMap(...) end
function game.GetTimeScale(...) end
function game.GetAmmoID(...) end
function game.AddAmmoType(p1) end
function game.CleanUpMap(...) end
function game.AddParticles(...) end
function game.GetIPAddress(...) end
function game.AddDecal(...) end

video = {}
function video.Record(...) end

language = {}
function language.GetPhrase(...) end
function language.Add(...) end

killicon = {}
function killicon.Exists(p1) end
function killicon.Draw(p1, p2, p3, p4) end
function killicon.AddFont(p1, p2, p3, p4) end
function killicon.Add(p1, p2, p3) end
function killicon.AddAlias(p1, p2) end
function killicon.GetSize(p1) end

menu = {}
function menu.RecordFrame(...) end

search = {}
function search.GetResults(p1, p2, p3) end
function search.AddProvider(p1, p2) end

input = {}
function input.GetKeyCode(...) end
function input.LookupKeyBinding(...) end
function input.GetKeyName(...) end
function input.IsButtonDown(...) end
function input.IsControlDown(...) end
function input.SelectWeapon(...) end
function input.LookupBinding(...) end
function input.IsKeyDown(...) end
function input.TranslateAlias(...) end
function input.WasMousePressed(...) end
function input.WasKeyReleased(...) end
function input.SetCursorPos(...) end
function input.WasMouseReleased(...) end
function input.CheckKeyTrapping(...) end
function input.GetCursorPos(...) end
function input.IsShiftDown(...) end
function input.IsKeyTrapping(...) end
function input.WasMouseDoublePressed(...) end
function input.WasKeyTyped(...) end
function input.WasKeyPressed(...) end
function input.IsMouseDown(...) end
function input.StartKeyTrapping(...) end

jit = {}
function jit.status(...) end
function jit.on(...) end
function jit.off(...) end
function jit.flush(...) end
function jit.attach(...) end
jit.util = {}
jit.opt = {}

bit = {}
function bit.rol(...) end
function bit.rshift(...) end
function bit.ror(...) end
function bit.bswap(...) end
function bit.bxor(...) end
function bit.bor(...) end
function bit.arshift(...) end
function bit.bnot(...) end
function bit.tobit(...) end
function bit.lshift(...) end
function bit.tohex(...) end
function bit.band(...) end

mesh = {}
function mesh.Normal(...) end
function mesh.Position(...) end
function mesh.Quad(...) end

function mesh.Specular(...) end
function mesh.TangentT(...) end
function mesh.QuadEasy(...) end
function mesh.TangentS(...) end
function mesh.UserData(...) end

function mesh.Color(...) end
function mesh.TexCoord(...) end
function mesh.End(...) end
function mesh.Begin(...) end

frame_blend = {}
function frame_blend.BlendFrame() end
function frame_blend.AddFrame() end
function frame_blend.IsActive() end
function frame_blend.ShouldSkipFrame() end
function frame_blend.RenderableFrames() end
function frame_blend.IsLastFrame() end
function frame_blend.DrawPreview() end
function frame_blend.CompleteFrame() end

notification = {}
function notification.AddLegacy(p1, p2, p3) end
function notification.AddProgress(p1, p2, p3) end
function notification.Kill(p1) end

timer = {}
function timer.Exists(...) end
function timer.UnPause(...) end
function timer.Toggle(...) end
function timer.Adjust(...) end
function timer.Create(...) end
function timer.Destroy(...) end
function timer.Stop(...) end
function timer.Start(...) end
function timer.Remove(...) end
function timer.Check(...) end
function timer.RepsLeft(...) end
function timer.TimeLeft(...) end
function timer.Simple(...) end
function timer.Pause(...) end

drive = {}
function drive.Move(p1, p2) end
function drive.PlayerStopDriving(p1) end
function drive.End(p1, p2) end
function drive.Register(p1, p2, p3) end
function drive.StartMove(p1, p2, p3) end
function drive.CalcView(p1, p2) end
function drive.CreateMove(p1) end
function drive.Start(p1, p2) end
function drive.GetMethod(p1) end
function drive.FinishMove(p1, p2) end
function drive.DestroyMethod(p1) end
function drive.PlayerStartDriving(p1, p2, p3) end

properties = {}
function properties.OnScreenClick(p1, p2) end
function properties.GetHovered(p1, p2) end
function properties.OpenEntityMenu(p1, p2) end
properties.List = {}
function properties.CanBeTargeted(p1, p2) end
function properties.Add(p1, p2) end

GWEN = {}
function GWEN.CreateTextureNormal(p1, p2, p3, p4, p5) end
function GWEN.TextureColor(p1, p2, p3) end
function GWEN.CreateTextureBorder(p1, p2, p3, p4, p5, p6, p7, p8, p9) end
function GWEN.CreateTextureCentered(p1, p2, p3, p4, p5) end

derma = {}
function derma.RefreshSkins() end
function derma.SkinChangeIndex() end
function derma.Color(p1, p2, p3) end
function derma.GetSkinTable() end
function derma.SkinHook(p1, p2, p3, p4, p5) end
function derma.GetNamedSkin(p1) end
function derma.GetDefaultSkin() end
function derma.DefineSkin(p1, p2, p3) end
derma.Controls = {}
function derma.SkinTexture(p1, p2, p3) end
derma.SkinList = {}
function derma.GetControlList() end
function derma.DefineControl(p1, p2, p3, p4) end

dragndrop = {}
function dragndrop.StartDragging() end
function dragndrop.Think() end
function dragndrop.HoverThink() end
function dragndrop.CallReceiverFunction(p1, p2, p3, p4) end
function dragndrop.UpdateReceiver() end
function dragndrop.GetDroppable(p1) end
function dragndrop.Clear() end
function dragndrop.Drop() end
function dragndrop.HandleDroppedInGame() end
function dragndrop.IsDragging() end
function dragndrop.StopDragging() end

matproxy = {}
function matproxy.Init(p1, p2, p3, p4) end
function matproxy.ShouldOverrideProxy(p1) end
function matproxy.Call(p1, p2, p3) end
matproxy.ActiveList = {}
matproxy.ProxyList = {}
function matproxy.Add(p1) end

presets = {}
function presets.Exists(p1, p2) end
function presets.Rename(p1, p2, p3) end
function presets.OverwritePresetPrompt(p1) end
function presets.Remove(p1, p2) end
function presets.BadNameAlert() end
function presets.GetTable(p1) end
function presets.Add(p1, p2, p3) end

controlpanel = {}
function controlpanel.Clear() end
function controlpanel.Get(p1) end

markup = {}
function markup.Parse(p1, p2) end
markup.TEXT_ALIGN_TOP = 3.0
markup.TEXT_ALIGN_BOTTOM = 4.0
markup.TEXT_ALIGN_RIGHT = 2.0
markup.TEXT_ALIGN_CENTER = 1.0
markup.TEXT_ALIGN_LEFT = 0.0

socket = {}
function socket.select(...) end
function socket.tcp6(...) end
function socket.udp6(...) end
function socket.protect(...) end
socket.dns = {}
function socket.connect(...) end
function socket.udp(...) end
function socket.skip(...) end
function socket.tcp(...) end
function socket.newtry(...) end
function socket.gettime(...) end
function socket.sleep(...) end

utf8 = {}
function utf8.codepoint(p1, p2, p3) end
function utf8.len(p1, p2, p3) end
function utf8.force(p1) end
function utf8.offset(p1, p2, p3) end
function utf8.char(...) end
function utf8.codes(p1) end

cookie = {}
function cookie.GetString(p1, p2) end
function cookie.Set(p1, p2) end
function cookie.GetNumber(p1, p2) end
function cookie.Delete(p1) end

http = {}
function http.Fetch(p1, p2, p3, p4) end
function http.Post(p1, p2, p3, p4, p5) end

cvars = {}
function cvars.GetConVarCallbacks(p1, p2) end
function cvars.OnConVarChanged(p1, p2, p3) end
function cvars.Number(p1, p2) end
function cvars.Bool(p1, p2) end
function cvars.String(p1, p2) end
function cvars.AddChangeCallback(p1, p2, p3) end
function cvars.RemoveChangeCallback(p1, p2) end

usermessage = {}
function usermessage.Hook(...) end
function usermessage.IncomingMessage(p1, p2) end
function usermessage.GetTable() end

construct = {}

duplicator = {}
duplicator.EntityClasses = {}
function duplicator.SetLocalPos(p1) end
function duplicator.IsAllowed(p1) end
function duplicator.Allow(p1) end
function duplicator.RegisterBoneModifier(p1, p2) end
duplicator.EntityModifiers = {}
function duplicator.RegisterEntityClass(...) end
duplicator.BoneModifiers = {}
function duplicator.FindEntityClass(p1) end
function duplicator.RegisterConstraint(...) end
function duplicator.RegisterEntityModifier(p1, p2) end
duplicator.ConstraintType = {}
function duplicator.SetLocalAng(p1) end

cleanup = {}
function cleanup.UpdateUI() end
function cleanup.GetTable() end
function cleanup.Register(p1) end

undo = {}
function undo.MakeUIDirty() end
function undo.GetTable() end
function undo.SetupUI() end

team = {}
function team.GetPlayers(p1) end
function team.GetScore(p1) end
function team.SetClass(p1, p2) end
function team.GetSpawnPoints(p1) end
function team.GetSpawnPoint(p1) end
function team.TotalDeaths(p1) end
function team.NumPlayers(p1) end
function team.TotalFrags(p1) end
function team.SetColor(p1, p2) end
function team.AddScore(p1, p2) end
function team.GetAllTeams() end
function team.GetColor(p1) end
function team.GetName(p1) end
function team.Joinable(p1) end
function team.GetClass(p1) end
function team.Valid(p1) end
function team.SetUp(p1, p2, p3, p4) end
function team.SetScore(p1, p2) end
function team.SetSpawnPoint(p1, p2) end
function team.BestAutoJoinTeam() end

scripted_ents = {}
function scripted_ents.GetSpawnable() end
function scripted_ents.IsBasedOn(p1, p2) end
function scripted_ents.Alias(p1, p2) end
function scripted_ents.GetList() end
function scripted_ents.GetType(p1) end
function scripted_ents.GetMember(p1, p2) end
function scripted_ents.GetStored(p1) end
function scripted_ents.OnLoaded() end
function scripted_ents.Register(p1, p2) end
function scripted_ents.Get(p1, p2) end

gamemode = {}
function gamemode.Call(...) end
function gamemode.Register(p1, p2, p3) end
function gamemode.Get(p1) end

draw = {}
draw.TEXT_ALIGN_TOP = 3.0
draw.TEXT_ALIGN_BOTTOM = 4.0
draw.TEXT_ALIGN_LEFT = 0.0
draw.TEXT_ALIGN_RIGHT = 2.0
draw.TEXT_ALIGN_CENTER = 1.0
function draw.DrawText(p1, p2, p3, p4, p5, p6) end
function draw.SimpleTextOutlined(p1, p2, p3, p4, p5, p6, p7, p8, p9) end
function draw.WordBox(p1, p2, p3, p4, p5, p6, p7) end
function draw.RoundedBox(p1, p2, p3, p4, p5, p6) end
function draw.TexturedQuad(p1) end
function draw.RoundedBoxEx(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end
function draw.NoTexture() end
function draw.GetFontHeight(p1) end
function draw.SimpleText(p1, p2, p3, p4, p5, p6, p7) end
function draw.TextShadow(p1, p2, p3) end
function draw.Text(p1) end

chat = {}
function chat.AddText(...) end
function chat.GetChatBoxPos(...) end
function chat.Open(...) end
function chat.Close(...) end
function chat.PlaySound(...) end
function chat.GetChatBoxSize(...) end

steamworks = {}
function steamworks.RequestPlayerInfo(...) end
function steamworks.OpenWorkshop(...) end
function steamworks.IsSubscribed(...) end
function steamworks.Download(...) end
function steamworks.GetList(...) end
function steamworks.FileInfo(...) end
function steamworks.ViewFile(...) end
function steamworks.ShouldMountAddon(...) end
function steamworks.GetPlayerName(...) end
function steamworks.VoteInfo(...) end
function steamworks.DownloadUGC(...) end

vgui = {}
function vgui.CreateX(...) end
function vgui.CursorVisible(...) end
function vgui.RegisterFile(p1) end
function vgui.Create(...) end
function vgui.IsHoveringWorld(...) end
function vgui.GetHoveredPanel(...) end
function vgui.GetWorldPanel(...) end
function vgui.GetKeyboardFocus(...) end
function vgui.FocusedHasParent(...) end
function vgui.Register(p1, p2, p3) end
function vgui.RegisterTable(p1, p2) end
function vgui.CreateFromTable(...) end
function vgui.GetControlTable(p1) end

surface = {}
function surface.DrawText(...) end
function surface.SetDrawColor(...) end
function surface.DrawOutlinedCircle(...) end
function surface.SetMaterial(...) end
function surface.SetTexture(...) end
function surface.GetAlphaMultiplier(...) end
function surface.SetTextPos(...) end
function surface.SetFont(...) end
function surface.GetTextSize(...) end
function surface.DrawTexturedRect(...) end
function surface.GetDrawColor(...) end
function surface.GetTextureID(...) end
function surface.ScreenHeight(...) end
function surface.SetAlphaMultiplier(...) end
function surface.GetHUDTexture(...) end
function surface.DrawOutlinedRect(...) end
function surface.DisableClipping(...) end
function surface.GetTextureSize(...) end
function surface.DrawLine(...) end
function surface.DrawTexturedRectUV(...) end
function surface.SetTextColor(...) end
function surface.DrawPoly(...) end
function surface.PlaySound(...) end
function surface.GetTextColor(...) end
function surface.DrawCircle(...) end
function surface.DrawTexturedRectRotated(...) end
function surface.DrawRect(...) end
function surface.CreateFont(...) end
function surface.ScreenWidth(...) end

spawnmenu = {}
function spawnmenu.GetPropTable() end
function spawnmenu.ActiveControlPanel() end
function spawnmenu.ClearToolMenus() end
function spawnmenu.DoSaveToTextFiles(p1) end
function spawnmenu.GetCreationTabs() end
function spawnmenu.GetContentType(p1, p2) end
function spawnmenu.SetActiveControlPanel(p1) end
function spawnmenu.AddToolTab(p1, p2, p3) end
function spawnmenu.SwitchToolTab(p1) end
function spawnmenu.AddCreationTab(p1, p2, p3, p4, p5) end
function spawnmenu.CreateContentIcon(p1, p2, p3) end
function spawnmenu.PopulateFromEngineTextFiles() end
function spawnmenu.ActivateToolPanel(p1, p2) end
function spawnmenu.AddContentType(p1, p2) end
function spawnmenu.ActivateTool(p1, p2) end
function spawnmenu.GetCustomPropTable() end
function spawnmenu.SaveToTextFiles(...) end
function spawnmenu.AddPropCategory(p1, p2, p3, p4, p5, p6, p7) end
function spawnmenu.AddToolCategory(p1, p2, p3) end
function spawnmenu.GetToolMenu(p1, p2, p3) end
function spawnmenu.AddToolMenuOption(p1, p2, p3, p4, p5, p6, p7, p8) end
function spawnmenu.PopulateFromTextFiles(...) end
function spawnmenu.GetTools() end

render = {}
function render.BlurRenderTarget(p1, p2, p3, p4) end
function render.SuppressEngineLighting(...) end
function render.SetBlend(...) end
function render.SetStencilTestMask(...) end
function render.GetFullScreenDepthTexture(...) end
function render.DrawWireframeSphere(...) end
function render.FogMaxDensity(...) end
function render.DrawScreenQuadEx(...) end
function render.GetDXLevel(...) end
function render.GetSuperFPTex2(...) end
function render.SetViewPort(...) end
function render.Clear(...) end
function render.Capture(...) end
function render.SetStencilCompareFunction(...) end
function render.SetShadowsDisabled(...) end
function render.GetLightColor(...) end
function render.DrawScreenQuad(...) end
function render.Spin(...) end
function render.DrawBox(...) end
function render.SetShadowColor(...) end
function render.GetSuperFPTex(...) end
function render.GetFogColor(...) end
function render.Model(p1, p2) end
function render.MaterialOverride(...) end
function render.GetScreenEffectTexture(...) end
function render.SetShadowDistance(...) end
function render.SetMaterial(...) end
function render.GetSmallTex1(...) end
function render.SetStencilPassOperation(...) end
function render.FogStart(...) end
function render.PushFilterMag(...) end
function render.DrawTextureToScreen(p1) end
function render.FogMode(...) end
function render.BrushMaterialOverride(...) end
function render.OverrideAlphaWriteEnable(...) end
function render.GetPowerOfTwoTexture(...) end
function render.SupportsPixelShaders_1_4(...) end
function render.SetColorModulation(...) end
function render.GetAmbientLightColor(...) end

function render.ClearBuffersObeyStencil(...) end
function render.GetToneMappingScaleLinear(...) end
function render.DrawQuadEasy(...) end
function render.OverrideColorWriteEnable(...) end
function render.GetFogDistances(...) end
function render.SetLightingMode(...) end
function render.SetStencilZFailOperation(...) end
function render.OverrideBlend(...) end
function render.SetLocalModelLights(...) end
function render.PopFilterMag(...) end
function render.ModelMaterialOverride(...) end
function render.RenderView(...) end
function render.EnableClipping(...) end
function render.SetScissorRect(...) end
function render.SupportsPixelShaders_2_0(...) end
function render.ComputeDynamicLighting(...) end
function render.UpdateRefractTexture(...) end
function render.SetWriteDepthToDestAlpha(...) end
function render.DrawSprite(...) end
function render.ResetModelLighting(...) end
function render.CullMode(...) end
function render.GetSurfaceColor(...) end
function render.UpdateFullScreenDepthTexture(...) end
function render.RedownloadAllLightmaps(...) end
function render.PushRenderTarget(...) end
function render.SetFogZ(...) end
function render.PushFilterMin(...) end
function render.GetMorphTex1(...) end
function render.GetMoBlurTex0(...) end
function render.GetMorphTex0(...) end
function render.SetStencilEnable(...) end
function render.OverrideDepthEnable(...) end
function render.DrawWireframeBox(...) end
function render.SetRenderTargetEx(...) end
function render.SetToneMappingScaleLinear(...) end
function render.ReadPixel(...) end
function render.PopCustomClipPlane(...) end
function render.DepthRange(...) end
function render.DrawTextureToScreenRect(p1, p2, p3, p4, p5) end
function render.WorldMaterialOverride(...) end
function render.SetAmbientLight(...) end
function render.GetFogMode(...) end
function render.SetColorMaterialIgnoreZ() end
function render.SetColorMaterial() end
function render.DrawBeam(...) end
function render.SupportsHDR() end
function render.CopyTexture(p1, p2) end
function render.AddBeam(...) end
function render.PerformFullScreenStencilOperation(...) end
function render.UpdateScreenEffectTexture(...) end
function render.UpdatePowerOfTwoTexture(...) end
function render.ResetToneMappingScale(...) end
function render.GetRenderTarget(...) end
function render.ComputeLighting(...) end
function render.GetBlend(...) end
function render.MaxTextureWidth(...) end
function render.PopRenderTarget(...) end
function render.ClearStencil(...) end
function render.GetResolvedFullFrameDepth(...) end
function render.GetSmallTex0(...) end
function render.FogEnd(...) end
function render.PushFlashlightMode(...) end
function render.EndBeam(...) end
function render.SetRenderTarget(...) end
function render.GetColorModulation(...) end
function render.StartBeam(...) end
function render.GetBloomTex1(...) end
function render.SetModelLighting(...) end
function render.DrawQuad(...) end
function render.SetStencilFailOperation(...) end
function render.RenderHUD(...) end
function render.SetStencilReferenceValue(...) end
function render.CopyRenderTargetToTexture(...) end
function render.ClearRenderTarget(p1, p2) end
function render.SetStencilWriteMask(...) end
function render.ClearStencilBufferRectangle(...) end
function render.PushCustomClipPlane(...) end
function render.SetLightmapTexture(...) end
function render.SetLightingOrigin(...) end
function render.ClearDepth(...) end
function render.DrawSphere(...) end
function render.FogColor(...) end
function render.GetRefractTexture(...) end
function render.GetBloomTex0(...) end
function render.OverrideBlendFunc(...) end
function render.PopFlashlightMode(...) end
function render.CapturePixels(...) end
function render.GetMoBlurTex1(...) end
function render.MaxTextureHeight(...) end
function render.MaterialOverrideByIndex(...) end
function render.DrawLine(...) end
function render.SetGoalToneMappingScale(...) end
function render.SetShadowDirection(...) end
function render.TurnOnToneMapping(...) end
function render.PopFilterMin(...) end

motionsensor = {}
function motionsensor.ChooseBuilderFromEntity(p1) end
function motionsensor.IsAvailable(...) end
function motionsensor.BuildSkeleton(p1, p2, p3) end
function motionsensor.ProcessAnglesTable(p1, p2, p3, p4) end
function motionsensor.Stop(...) end
function motionsensor.Start(...) end
function motionsensor.IsActive(...) end
function motionsensor.ProcessPositionTable(p1, p2) end
function motionsensor.GetSkeleton(...) end
function motionsensor.ProcessAngle(p1, p2, p3, p4, p5, p6, p7) end
function motionsensor.GetColourMaterial(...) end
motionsensor.DebugBones = {}

gui = {}
function gui.MouseX(...) end
function gui.OpenURL(...) end
function gui.EnableScreenClicker(...) end
function gui.MousePos(...) end
function gui.InternalMouseReleased(...) end
function gui.InternalKeyCodeReleased(...) end
function gui.InternalKeyCodeTyped(...) end
function gui.HideGameUI(...) end
function gui.InternalCursorMoved(...) end
function gui.IsGameUIVisible(...) end
function gui.ActivateGameUI(...) end
function gui.ScreenToVector(...) end
function gui.IsConsoleVisible(...) end
function gui.InternalMouseDoublePressed(...) end
function gui.SetMousePos(...) end
function gui.InternalKeyCodePressed(...) end
function gui.MouseY(...) end
function gui.InternalKeyTyped(...) end
function gui.InternalMousePressed(...) end
function gui.InternalMouseWheeled(...) end

sound = {}
function sound.Generate(...) end
function sound.GetTable(...) end
function sound.AddSoundOverrides(...) end
function sound.PlayURL(...) end
function sound.GetProperties(...) end
function sound.Add(...) end
function sound.Play(...) end
function sound.PlayFile(...) end

effects = {}
function effects.BeamRingPoint(...) end
function effects.Create(p1) end
function effects.GetList() end
function effects.Register(p1, p2) end
function effects.Bubbles(...) end
function effects.BubbleTrail(...) end

util = {}
function util.IsModelLoaded(...) end
function util.SteamIDTo64(...) end
function util.GetModelInfo(...) end
function util.GetPlayerTrace(p1, p2) end
function util.SetPData(p1, p2, p3) end
function util.Stack() end
function util.JSONToTable(...) end
function util.GetPData(p1, p2, p3) end
function util.GetSurfaceIndex(...) end
function util.SteamIDFrom64(...) end
function util.RemovePData(p1, p2) end
function util.KeyValuesToTablePreserveOrder(...) end
function util.IsSkyboxVisibleFromPoint(...) end
function util.DecalEx(...) end
function util.TableToJSON(...) end
function util.IntersectRayWithOBB(...) end
function util.TableToKeyValues(...) end
function util.StringToType(p1, p2) end
function util.ParticleTracerEx(...) end
function util.RelativePathToFull(...) end
function util.Base64Encode(...) end
function util.IsValidPhysicsObject(p1, p2) end
function util.AimVector(...) end
function util.GetSurfacePropName(...) end
function util.TraceLine(...) end
function util.IsValidProp(...) end
function util.GetSurfaceData(...) end
function util.IntersectRayWithPlane(...) end
function util.IsOBBIntersectingOBB(...) end
function util.SharedRandom(...) end
function util.Base64Decode(...) end
function util.TraceEntityHull(...) end
function util.NetworkStringToID(...) end
function util.TypeToString(p1) end
function util.DateStamp() end
function util.TimerCycle(...) end
function util.KeyValuesToTable(...) end
function util.DistanceToLine(...) end
function util.ScreenShake(...) end
function util.NiceFloat(p1) end
function util.LocalToWorld(p1, p2, p3) end
function util.IsValidModel(...) end
function util.PrecacheModel(...) end
function util.PrecacheSound(...) end
function util.DecalMaterial(...) end
function util.GetSunInfo(...) end
function util.PointContents(...) end
function util.Decal(...) end
function util.IsValidRagdoll(...) end
function util.Timer(p1) end
function util.BlastDamageInfo(...) end
function util.ParticleTracer(...) end
function util.NetworkIDToString(...) end
function util.Effect(...) end
function util.TraceHull(...) end
function util.CRC(...) end
function util.BlastDamage(...) end
function util.TraceEntity(...) end
function util.GetPixelVisibleHandle(...) end
function util.Compress(...) end
function util.QuickTrace(p1, p2, p3) end
function util.tobool(p1) end
function util.PixelVisible(...) end
function util.GetModelMeshes(...) end
util.worldpicker = {}
function util.Decompress(...) end

system = {}
function system.IsWindowed(...) end
function system.BatteryPower(...) end
function system.AppTime(...) end
function system.UpTime(...) end
function system.IsOSX(...) end
function system.SteamTime(...) end
function system.FlashWindow(...) end
function system.IsLinux(...) end
function system.GetCountry(...) end
function system.IsWindows(...) end
function system.HasFocus(...) end

debugoverlay = {}
function debugoverlay.Line(...) end
function debugoverlay.BoxAngles(...) end
function debugoverlay.Sphere(...) end
function debugoverlay.Axis(...) end
function debugoverlay.Box(...) end
function debugoverlay.Grid(...) end
function debugoverlay.SweptBox(...) end
function debugoverlay.EntityTextAtPosition(...) end
function debugoverlay.Triangle(...) end
function debugoverlay.Cross(...) end
function debugoverlay.ScreenText(...) end
function debugoverlay.Text(...) end

net = {}
function net.Receive(p1, p2) end
function net.WriteInt(...) end
function net.ReadInt(...) end
function net.SendToServer(...) end
function net.WriteFloat(...) end
net.Receivers = {}
function net.ReadType(p1) end
function net.BytesWritten(...) end
function net.WriteBool(...) end
function net.WriteAngle(...) end
function net.WriteBit(...) end
function net.ReadHeader(...) end
function net.WriteType(p1) end
function net.BytesLeft(...) end
function net.ReadBit(...) end
function net.WriteNormal(...) end
function net.WriteUInt(...) end
net.WriteVars = {}
function net.ReadString(...) end
function net.ReadMatrix(...) end
net.ReadVars = {}
function net.WriteColor(p1) end
function net.WriteDouble(...) end
function net.ReadTable() end
function net.WriteMatrix(...) end
function net.ReadBool() end
function net.ReadColor() end
function net.ReadEntity() end
function net.WriteData(...) end
function net.WriteEntity(p1) end
function net.ReadUInt(...) end
function net.ReadData(...) end
function net.WriteTable(p1) end
function net.Start(...) end
function net.WriteString(...) end
function net.ReadDouble(...) end
function net.ReadFloat(...) end
function net.WriteVector(...) end
function net.Incoming(p1, p2) end
function net.ReadAngle(...) end
function net.ReadNormal(...) end
function net.ReadVector(...) end

ents = {}
function ents.FindInCone(...) end
function ents.FindInBox(...) end
function ents.FindByModel(...) end
function ents.GetCount(...) end
function ents.FindByName(...) end
function ents.CreateClientside(...) end
function ents.FindInSphere(...) end
function ents.FindByClass(...) end
function ents.GetByIndex(...) end
function ents.GetAll(...) end
function ents.CreateClientProp(...) end
function ents.FindByClassAndParent(p1, p2) end
function ents.FindAlongRay(...) end

cam = {}
function cam.PushModelMatrix(...) end
function cam.Start3D(p1, p2, p3, p4, p5, p6, p7, p8, p9) end
function cam.End3D(...) end
function cam.Start3D2D(...) end
function cam.GetModelMatrix(...) end
function cam.ApplyShake(...) end
function cam.StartOrthoView(...) end
function cam.End3D2D(...) end
function cam.Start(...) end
function cam.PopModelMatrix(...) end
function cam.Start2D() end
function cam.End(...) end
function cam.EndOrthoView(...) end
function cam.IgnoreZ(...) end
function cam.End2D(...) end

SpawniconGenFunctions = {}

engine = {}
function engine.GetDemoPlaybackStartTick(...) end
function engine.IsRecordingDemo(...) end
function engine.ServerFrameTime(...) end
function engine.GetDemoPlaybackTimeScale(...) end
function engine.OpenDupe(...) end
function engine.TickCount(...) end
function engine.GetGames(...) end
function engine.IsPlayingDemo(...) end
function engine.GetGamemodes(...) end
function engine.WriteDupe(...) end
function engine.GetDemoPlaybackTick(...) end
function engine.ActiveGamemode(...) end
function engine.WriteSave(...) end
function engine.GetAddons(...) end
function engine.VideoSettings(...) end
function engine.GetUserContent(...) end
function engine.GetDemoPlaybackTotalTicks(...) end
function engine.TickInterval(...) end

file = {}
function file.Exists(...) end
function file.Write(p1, p2) end
function file.Append(p1, p2) end
function file.Rename(...) end
function file.Time(...) end
function file.Delete(...) end
function file.Size(...) end
function file.Read(p1, p2) end
function file.Open(...) end
function file.CreateDir(...) end
function file.IsDir(...) end
function file.Find(...) end

saverestore = {}
function saverestore.LoadGlobal(p1) end
function saverestore.WritableKeysInTable(p1) end
function saverestore.PreRestore() end
function saverestore.PreSave() end
function saverestore.AddRestoreHook(p1, p2) end
function saverestore.AddSaveHook(p1, p2) end
function saverestore.WriteTable(p1, p2) end
function saverestore.SaveEntity(p1, p2) end
function saverestore.LoadEntity(p1, p2) end
function saverestore.WriteVar(p1, p2) end
function saverestore.ReadVar(p1) end
function saverestore.ReadTable(p1) end
function saverestore.SaveGlobal(p1) end

player = {}
function player.GetByAccountID(p1) end
function player.GetCount(...) end
function player.GetByUniqueID(p1) end
function player.GetHumans(...) end
function player.GetBySteamID64(p1) end
function player.GetBySteamID(p1) end
function player.GetBots(...) end
function player.GetByID(...) end
function player.GetAll(...) end

widgets = {}
function widgets.RenderMe(p1) end
function widgets.PlayerTick(p1, p2) end

achievements = {}
function achievements.Remover(...) end
function achievements.GetDesc(...) end
function achievements.SpawnedNPC(...) end
function achievements.EatBall(...) end
function achievements.BalloonPopped(...) end
function achievements.Count(...) end
function achievements.SpawnMenuOpen(...) end
function achievements.IncBaddies(...) end
function achievements.SpawnedRagdoll(...) end
function achievements.IncGoodies(...) end
function achievements.SpawnedProp(...) end
function achievements.IsAchieved(...) end
function achievements.GetGoal(...) end
function achievements.IncBystander(...) end
function achievements.GetCount(...) end
function achievements.GetName(...) end

gmod = {}
function gmod.GetGamemode(...) end

baseclass = {}
function baseclass.Set(p1, p2) end
function baseclass.Get(p1) end

sql = {}
function sql.Query(...) end
function sql.QueryValue(p1) end
function sql.SQLStr(p1, p2) end
function sql.LastError() end
function sql.Commit() end
function sql.QueryRow(p1, p2) end
function sql.IndexExists(p1) end
function sql.TableExists(p1) end
function sql.Begin() end

resource = {}
function resource.AddFile(...) end
function resource.AddSingleFile(...) end

concommand = {}
function concommand.Run(p1, p2, p3, p4) end
function concommand.Remove(p1) end
function concommand.AutoComplete(p1, p2) end
function concommand.GetTable() end
function concommand.Add(p1, p2, p3, p4, p5) end

physenv = {}
function physenv.SetAirDensity(...) end
function physenv.SetPerformanceSettings(...) end
function physenv.GetGravity(...) end
function physenv.GetAirDensity(...) end
function physenv.GetPerformanceSettings(...) end
function physenv.AddSurfaceData(...) end
function physenv.SetGravity(...) end
